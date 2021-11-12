class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true,
                    uniquness: { scope: :list }
  validates :list, presence: true
end
