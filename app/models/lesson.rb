class Lesson < ApplicationRecord
  belongs_to :chapter
  has_many :lectures, dependent: :destroy
  has_one :course, through: :chapter, dependent: :destroy
  validates :content, presence: true
  has_many_attached :photos, dependent: :destroy
end
