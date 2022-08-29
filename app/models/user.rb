class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :lectures
  has_many :designed_courses, class_name: 'Course'
  has_many :classrooms
  has_many :courses, through: :classrooms
  has_many :chapters, through: :lessons
  has_many :lessons, through: :lectures
  has_many :designed_chapters, through: :designed_courses, source: :chapters
  has_many :designed_lessons, through: :designed_chapters, source: :lessons
  validates :username, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
