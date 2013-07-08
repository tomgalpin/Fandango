class TheatersController < ApplicationController
  # http_basic_authenticate_with :username => "Tom", :password => "0987"

  def index
    @movies = Movie.all
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @move = Movie.new
  end

  def create
    @movie = Movie.new(params[:movie])

    if @movie.save
      redirect_to theaters_path
    else
      render :new
    end
  end

  def edit
    @theater = Theater.find(params[:id])
  end

  def update
    @theater = Theater.find(params[:id])

    if @theater.update_attributes(params[:theater])
      redirect_to theaters_path
    else
      render :edit
    end
  end

  def destroy
    @theater = Theater.find(params[:id])
    @theater.destroy

    redirect_to theaters_path
  end
end
