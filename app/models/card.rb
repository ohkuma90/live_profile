class Card < ApplicationRecord
  belongs_to :user
  has_many :books, through: :book_cards

  with_options presence: true do
    validates :live
    validates :rank1
    validates :rank2
    validates :rank3
  end
end
