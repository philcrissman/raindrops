class Person::SignUp < Person
  validates :password, :confirmation => true
end
