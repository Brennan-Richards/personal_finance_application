class Carexp < ApplicationRecord
  validates :gas, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }
  validates :insurance, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }
  validates :maintenance, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }
  validates :taxes, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }
  validates :payment, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

end
