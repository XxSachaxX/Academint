class Lecture < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  has_one :chapter, through: :lesson
  has_one :course, through: :chapter
  enum status: { inactive: 0, démarrée: 2, terminée: 3 }
end
