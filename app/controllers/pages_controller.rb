class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about]

  def home
    @courses = Course.first(3)
  end

  def dashboard
    @classrooms = current_user.classrooms
    @count_finished = count_finished_classrooms(@classrooms)
    @count_unfinished = count_unfinished_classrooms(@classrooms)
  end

  def about
  end

  def mint_nft
  end

  private

  def count_finished_classrooms(classrooms)
    classrooms.select(&:finished?).count
  end

  def count_unfinished_classrooms(classrooms)
    classrooms.reject(&:finished?).count
  end
end
