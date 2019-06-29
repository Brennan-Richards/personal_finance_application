class Housingexp < ApplicationRecord
  validates :mortgage, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

  validates :propertytax, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

  validates :electricity, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

  validates :heating, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

  validates :water, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

  validates :entertainment, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }
end
