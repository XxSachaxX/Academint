class ChaptersController < ApplicationController
  before_action :set_chapter, only: %i[edit update destroy]

  def new
    @chapter = Chapter.new
    @course = Course.find(params[:course_id])
    authorize @chapter
  end

  def create
    @chapter = Chapter.new(chapter_params)
    @course = Course.find(params[:course_id])
    @chapter.course = @course
    if @chapter.save
      redirect_to new_course_chapter_path(@course), notice: "Chapitre créé, vous pouvez ajouter vos leçons ou d'autres chapites"
    else
      render :new, status: :unprocessable_entity
    end
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

  def set_chapter
    @chapter = Chapter.find(params[:id])
  end
end
