class Chapter < ApplicationRecord
  belongs_to :course
  has_many :lessons
  validates :name, :description, presence: true
end
