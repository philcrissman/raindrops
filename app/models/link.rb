class Link < ApplicationRecord
  has_many :linkings
  has_many :people, :through => :linkings
end
