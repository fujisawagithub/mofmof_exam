class RentalHousesController < ApplicationController
  before_action :set_rental_house, only: %i[ show edit update destroy ]

  # GET /rental_houses or /rental_houses.json
  def index
    @rental_houses = RentalHouse.all
  end

  # GET /rental_houses/1 or /rental_houses/1.json
  def show
  end

  # GET /rental_houses/new
  def new
    @rental_house = RentalHouse.new
  end

  # GET /rental_houses/1/edit
  def edit
  end

  # POST /rental_houses or /rental_houses.json
  def create
    @rental_house = RentalHouse.new(rental_house_params)

    respond_to do |format|
      if @rental_house.save
        format.html { redirect_to @rental_house, notice: "Rental house was successfully created." }
        format.json { render :show, status: :created, location: @rental_house }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rental_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rental_houses/1 or /rental_houses/1.json
  def update
    respond_to do |format|
      if @rental_house.update(rental_house_params)
        format.html { redirect_to @rental_house, notice: "Rental house was successfully updated." }
        format.json { render :show, status: :ok, location: @rental_house }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rental_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rental_houses/1 or /rental_houses/1.json
  def destroy
    @rental_house.destroy
    respond_to do |format|
      format.html { redirect_to rental_houses_url, notice: "Rental house was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental_house
      @rental_house = RentalHouse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rental_house_params
      params.require(:rental_house).permit(:name, :fee, :address, :age, :remarks)
    end
end
