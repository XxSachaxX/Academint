class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :lectures, dependent: :destroy
  has_many :designed_courses, class_name: 'Course', dependent: :destroy
  has_many :classrooms, dependent: :destroy
  has_many :courses, through: :classrooms, dependent: :destroy
  has_many :chapters, through: :lessons, dependent: :destroy
  has_many :lessons, through: :lectures, dependent: :destroy
  has_many :designed_chapters, through: :designed_courses, source: :chapters, dependent: :destroy
  has_many :designed_lessons, through: :designed_chapters, source: :lessons, dependent: :destroy
  has_one_attached :photo, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
