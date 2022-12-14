class Lesson < ApplicationRecord
  belongs_to :chapter
  has_many :lectures, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions
  has_one :course, through: :chapter
  has_many_attached :photos, dependent: :destroy
  has_rich_text :enriched_content
  validates :media, :title, presence: true

  def display_media
    case media
    when "video"
      "fa-circle-play"
    when "texte"
      "fa-file-lines"
    when "podcast"
      "fa-podcast"
    when "quizz"
      "fa-circle-question"
    when "texte enrichi"
      "fa-file-lines"
    when "texte enrichi + video"
      "fa-circle-play"
    else
      media
    end
  end
end
