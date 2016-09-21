class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]
  def index
    @classroom = Classroom.all
  end
  def new
    @classroom = Classroom.new
  end
  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      redirect_to classrooms_path
    else
      redirect_to new_classroom_path
    end
  end

  def show
  end

  def edit

  end

  def update
    if @classroom.update(classroom_params)
      redirect_to classrooms_path
    else
      redirect_to edit_classroom_path
    end
  end

  def destroy
    @classroom.destroy
    respond_to do |format|
      format.js
    end
  end
  private
    def set_classroom
      @classroom = Classroom.find(params[:id])
    end

    def classroom_params
      params.require(:classroom).permit(:name, :capacity, :area)
    end
end
