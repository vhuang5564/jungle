class User < ActiveRecord::Base
  has_secure_password

  validates_length_of :name, maximum: 18
  validates_length_of :name, minimum: 6
  validates :email, uniqueness: true
end
