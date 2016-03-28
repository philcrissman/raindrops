class Person < ApplicationRecord
  authenticates_with_sorcery!

  validates :email, :presence => true
end
