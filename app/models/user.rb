class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :classrooms, dependent: :destroy
  has_many :lectures, through: :classrooms
  has_many :designed_courses, class_name: 'Course', dependent: :destroy
  has_many :courses, through: :classrooms
  has_many :chapters, through: :courses
  has_many :lessons, through: :chapters
  has_many :designed_chapters, through: :designed_courses, source: :chapters
  has_many :designed_lessons, through: :designed_chapters, source: :lessons
  has_many :certifications, dependent: :destroy
  has_one_attached :photo, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  validates :username, presence: true

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
        user = User.create(username: data['name'],
           email: data['email'],
           password: Devise.friendly_token[0,20]
        )
    end
    user
  end
end
