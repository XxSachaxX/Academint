class Course < ApplicationRecord
  belongs_to :user
  has_many :chapters
  has_many :classrooms
  validates :name, :descrpition, :level, presence: true
  has_one_attached :photo
end
