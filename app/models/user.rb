class User < ApplicationRecord
  has_many :paintings, dependent: :destroy #el vendedor
  has_many :orders, dependent: :destroy #el comprador, si se borra el usuario se destruyen las pinturas

  #validates :user_name, presence: true, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
