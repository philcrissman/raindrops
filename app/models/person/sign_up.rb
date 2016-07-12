class Person::SignUp < Person
  validates :password, :confirmation => true

  def self.model_name
    superclass.model_name
  end
end
