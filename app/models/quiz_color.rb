class QuizColor < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :code_r, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 255 }
    validates :code_g, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 255 }
    validates :code_b, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 255 }
end
