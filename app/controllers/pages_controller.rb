class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about]

  def home
    @courses = Course.first(3)
  end

  def dashboard
  end

  def about
  end
end
