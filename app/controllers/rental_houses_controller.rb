class RentalHousesController < ApplicationController
  before_action :set_rental_house, only: %i[show edit update destroy]
  before_action :set_station, only: %i[show edit update destroy]
  def index
    @rental_houses = RentalHouse.all
  end

  def show
    @rental_houses = Station.all
  end

  def new
    @rental_house = RentalHouse.new
    2.times { @rental_house.stations.build }
  end

  def edit
    @rental_house.stations.build
  end

  def create
    @rental_house = RentalHouse.new(rental_house_params)
    respond_to do |format|
      if @rental_house.save
        format.html { redirect_to @rental_house, notice: '登録しました！' }
        format.json { render :show, status: :created, location: @rental_house }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rental_house.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @rental_house.update(rental_house_params)
        format.html { redirect_to @rental_house, notice: '更新しました！' }
        format.json { render :show, status: :ok, location: @rental_house }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rental_house.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @rental_house.destroy
    respond_to do |format|
      format.html { redirect_to rental_houses_url, notice: '削除しました！' }
      format.json { head :no_content }
    end
  end

  private

  def set_rental_house
    @rental_house = RentalHouse.find(params[:id])
  end

  def set_station
    @station = Station.where(rental_house_id: @rental_house.id)
  end

  def rental_house_params
    params.require(:rental_house).permit(
                                         :name,
                                         :fee,
                                         :address,
                                         :age,
                                         :remarks,
    stations_attributes: %i[id _destroy route_name name min_on_foot])
  end
end
