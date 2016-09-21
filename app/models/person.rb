class Person < ApplicationRecord
  authenticates_with_sorcery!

  validates :email, :presence => true

  has_many :linkings
  has_many :links, :through => :linkings
end

