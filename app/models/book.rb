class Book < ApplicationRecord
  belongs_to :user
  has_many :cards, through: :book_cards
end
