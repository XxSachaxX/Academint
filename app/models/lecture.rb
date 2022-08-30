class Lecture < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  has_one :chapter, through: :lesson, dependent: :destroy
  has_one :course, through: :chapter, dependent: :destroy
  enum status: { inactive: 0, démarrée: 1, terminée: 2 }
end
