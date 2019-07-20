class Housingexp < ApplicationRecord
  belongs_to :user

  validates :mortgage, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

  validates :propertytax, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

  validates :firetax, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

  validates :firetax, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

end
