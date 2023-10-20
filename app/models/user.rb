class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  with_options presence: true do
    validates :name
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
    validates :x_id
    validates :birth
    validates :nickname
    validates :favorite_food
    validates :hated_food
    validates :holiday
    validates :hobby
    validates :first_band
    validates :first_live
  end

  has_many :cards
end