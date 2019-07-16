class Foodexp < ApplicationRecord
  belongs_to :user
  
  validates :monthlyfood, presence: true,
            numericality: { only_integer: true },
            numericality: { greater_than_or_equal_to: 0 }
end
