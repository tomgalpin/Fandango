class ShowingsController < ApplicationController
  def index
    @showings = Showing.all
  end

  def show
    @showing = Showing.find(params[:id])
  end

  def new
    @showing = Showing.new
  end

  def create
    @showing = Showing.new(params[:showing])

    if @showing.save
      redirect_to showings_path
    else
      render :new
    end
  end

  def edit
    @showing = Showing.find(params[:id])
  end

  def update
    @showing = Showing.find(params[:id])

    if @showing.update_attributes(params[:showing])
      redirect_to showings_path
    else
      render :edit
    end
  end

  def destroy
    @showing = Showing.find(params[:id])
    @showing.destroy

    redirect_to showings_path
  end
end
