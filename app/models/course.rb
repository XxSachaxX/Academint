class Course < ApplicationRecord
  belongs_to :user
  has_many :chapters
  has_many :classrooms
  validates :name, :description, :level, presence: true
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :description ],
    associated_against: {
      chapters: [ :name, :description ],
      lessons: [ :content ],
    },
    using: {
      tsearch: { prefix: true }
    }
end
