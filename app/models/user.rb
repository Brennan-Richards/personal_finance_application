class User < ApplicationRecord
  has_one :carexp
  has_one :housingexp
  has_one :foodexp
  has_one :tax
  has_one :spec
  has_one :utility
  has_one :miscexp
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
