class Lesson < ApplicationRecord
  belongs_to :chapter
  has_many :lectures
  has_one :course, through: :chapter
  validates :content, presence: true
end
