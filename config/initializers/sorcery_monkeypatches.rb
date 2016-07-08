module Sorcery
  module Controller
    module Submodules
      module ActivityLogging
        # THIS particular monkeypatch is just to replace after_filter
        # with after_action so that Rails 5 will stop complaining
        # that after_filter is going to be deprecated.
        def self.included(base)
          base.send(:include, InstanceMethods)
          Config.module_eval do
            class << self
              attr_accessor :register_login_time
              attr_accessor :register_logout_time
              attr_accessor :register_last_activity_time
              attr_accessor :register_last_ip_address

              def merge_activity_logging_defaults!
                @defaults.merge!(:@register_login_time         => true,
                                 :@register_logout_time        => true,
                                 :@register_last_activity_time => true,
                                 :@register_last_ip_address    => true
                                )
              end
            end
            merge_activity_logging_defaults!
          end
          Config.after_login    << :register_login_time_to_db
          Config.after_login    << :register_last_ip_address
          Config.before_logout  << :register_logout_time_to_db
          base.after_action :register_last_activity_time_to_db
        end
      end
    end
  end
end
