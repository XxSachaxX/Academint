class Classroom < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :lectures, dependent: :destroy
  has_many :lessons, through: :lectures

  validates :course_id, uniqueness: { scope: :user_id }

  def finished?
    lectures.each do |lecture|
      return false unless lecture.done?
    end
    return true
  end

  def completed_percentage
    lectures = self.lectures
    completed = lectures.select(&:done?)
    return completed.count.fdiv(lectures.count).round(2)
  end

  def ongoing_lecture
    Lecture.find_by(status: "ongoing", classroom: self)
  end

  def next_lecture
    Lecture.find_by(status: "pending", classroom: self)
  end
end
