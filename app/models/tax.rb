class Tax < ApplicationRecord
  belongs_to :user

  validates :fincome, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }
            
  validates :sincome, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }
end
