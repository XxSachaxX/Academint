class Lecture < ApplicationRecord
  belongs_to :lesson
  belongs_to :classroom
  has_one :chapter, through: :lesson
  has_one :course, through: :chapter
  enum status: { pending: 0, ongoing: 1, done: 2 }
end
