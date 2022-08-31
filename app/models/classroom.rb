class Classroom < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :lectures
  has_many :lessons, through: :lectures

  validates :course_id, uniqueness: { scope: :user_id }
end
