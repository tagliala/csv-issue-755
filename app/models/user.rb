class User < ApplicationRecord
  validates :email, email: true # cient side validation of email
  validates :password, password: true #client side validation of password

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
