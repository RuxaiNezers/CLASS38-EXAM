class User < ApplicationRecord
	has_many :completeds
	has_many :todos, through: :completeds
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 
end
