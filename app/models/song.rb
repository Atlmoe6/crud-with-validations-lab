class Song < ApplicationRecord
    validates :title, presence: true, uniqueness: {scope: :release_year, message: "This title is already taken!"}
    validates :artist_name, presence: true
    validates :released, inclusion: { in: [ true, false ] }
    validates :release_year, presence: true, if: :released, numericality: { less_than_or_equal_to: 2021 }
    validates :artist_name, presence: true
end