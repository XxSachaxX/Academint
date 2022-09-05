class Lesson < ApplicationRecord
  belongs_to :chapter
  has_many :lectures, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions
  has_one :course, through: :chapter
  # validates :content, presence: true
  has_many_attached :photos, dependent: :destroy
  has_rich_text :content

  def display_media
    case self.media
    when "video"
      "fa-circle-play"
    when "texte"
      "fa-file-lines"
    when "podcast"
      "fa-podcast"
    when "quizz"
      "fa-circle-question"
    else
      self.media
    end
  end
end
