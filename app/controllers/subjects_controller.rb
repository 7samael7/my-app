class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :edit, :update, :destroy]

  permits :title, :code

  def index
    @subject = Subject.all
  end

  def show
  end

  def new
    @subject = Subject.new
  end

  def edit
  end

  def create(subject)
    @subject = Subject.new(subject)

    if @subject.save
      redirect_to subject_path, notice: 'Subject was successfully created.'
    else
      render :edit
    end
  end

  def destroy
    @subject.destroy
    redirect_to subject_url, notice: 'Subject was successfully destroyed.'
    end


  private
  def set_subject
    @subject = Subject.find(id)
  end
end
