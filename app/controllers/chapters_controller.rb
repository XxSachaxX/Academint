class ChaptersController < ApplicationController
  def new
    @chapter = Chapter.new
    authorize @chapter
  end

  def create
    @chapter = Chapter.new(chapter_params)
    @course = Chapter.find(params[course_id])
    @chapter.course = @course
    authorize @chapter
  end

  def edit
    authorize @chapter
  end

  def update
    authorize @chapter
  end

  def destroy
    authorize @chapter
  end

  private

  def chapter_params
    params.require(:chapter).permit(:name, :description)
  end
end
