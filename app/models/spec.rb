class Spec < ApplicationRecord
  belongs_to :user

  validates :salary, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }
end
