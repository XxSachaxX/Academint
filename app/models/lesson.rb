class Lesson < ApplicationRecord
  belongs_to :chapter
  has_many :lectures, dependent: :destroy
  has_many :questions
  has_many :answers, through: :questions
  has_one :course, through: :chapter
  validates :content, presence: true
  has_many_attached :photos, dependent: :destroy
end
