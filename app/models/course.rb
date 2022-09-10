class Course < ApplicationRecord
  belongs_to :user
  has_many :chapters, dependent: :destroy
  has_many :classrooms, dependent: :destroy
  validates :name, :description, :level, :photo, presence: true
  has_one_attached :photo, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: %i[name description], associated_against: {
                                                   chapters: %i[name description]
                                                 },
                  using: {
                    tsearch: { prefix: true }
                  }
end
