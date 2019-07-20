class Miscexp < ApplicationRecord
  belongs_to :user

  validates :healthinsurance, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

  validates :entertainment, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

  validates :other,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }
            
end
