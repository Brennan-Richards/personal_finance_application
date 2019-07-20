class Utility < ApplicationRecord
  belongs_to :user

  validates :electricity, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }
            
  validates :heating, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

  validates :phone, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

  validates :cable, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

  validates :internet, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }

  validates :water, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }
end
