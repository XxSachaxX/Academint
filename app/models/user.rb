class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :lectures, dependent: :destroy
  has_many :designed_courses, class_name: 'Course', dependent: :destroy
  has_many :classrooms, dependent: :destroy
  has_many :courses, through: :classrooms
  has_many :chapters, through: :lessons
  has_many :lessons, through: :lectures
  has_many :designed_chapters, through: :designed_courses, source: :chapters
  has_many :designed_lessons, through: :designed_chapters, source: :lessons
  has_one_attached :photo, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
