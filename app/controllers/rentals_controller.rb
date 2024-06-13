class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def create
    @rental = Rental.new(rental_params)
    if @rental.save
      redirect_to rentals_path, notice: 'Rental was successfully created.'
    else
      render :new
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:user_id, :music_record_id, :rent_date, :price, :note, :damage_assessment)
  end
end
