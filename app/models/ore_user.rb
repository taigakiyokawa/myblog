class OreUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable, :timeoutable, :trackable
end
