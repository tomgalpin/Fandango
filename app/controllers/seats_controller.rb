class SeatsController < ApplicationController
  def index
    @seats = Seat.all
  end

  def show
    @seat = Seat.find(params[:id])
  end

  def new
    @seat = Seat.new
  end

  def create
    @seat = Seat.new(params[:seat])

    if @seat.save
      redirect_to seats_path
    else
      render :new
    end
  end

  def edit
    @seat = Seat.find(params[:id])
  end

  def update
    @seat = Seat.find(params[:id])

    if @seat.update_attributes(params[:seat])
      redirect_to seats_path
    else
      render :edit
    end
  end

  def destroy
    @seat = Seat.find(params[:id])
    @seat.destroy

    redirect_to seats_path
  end
end
