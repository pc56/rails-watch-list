class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, :overwiew, presence: true, uniqueness: true
end
