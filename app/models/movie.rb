class Movie < ApplicationRecord
    validates :title, presence: true
    validates :rating, inclusion: { in: %w(G PG PG-13 NC-17 R)}
    validates :released_date, presence: true
end
