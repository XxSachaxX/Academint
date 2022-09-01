class Classroom < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :lectures
  has_many :lessons, through: :lectures

  validates :course_id, uniqueness: { scope: :user_id }

  def finished?
    self.lectures.each do |lecture|
      return false unless lecture.done?
    end
    return true
  end

  def completed_percentage
    lectures = self.lectures
    completed = lectures.select { |l| l.done? }
    return completed.count.fdiv(lectures.count).round(2)
  end
end
