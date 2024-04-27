class QuizImage < ApplicationRecord
    validates :image, presence: true, uniqueness: true
end
