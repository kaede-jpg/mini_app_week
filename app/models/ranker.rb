class Ranker < ApplicationRecord
    validates :nickname, presence: true, length: { in: 1..12 }
    validates :score, presence: true
end
