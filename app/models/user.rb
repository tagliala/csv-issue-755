class User < ApplicationRecord
  validates_email :email # cient side validation of email
  validates_password :password #client side validation of password

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
