class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
  validates :name,presence: true,length: {maximum:55}
  validates :email,presence: true,length: {maximum:255}
  validates :password,length: {minimum: 6}
end
