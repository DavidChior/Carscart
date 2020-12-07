class CarmodelsController < ApplicationController
  before_action :set_carmodel, only: [:show, :edit, :update, :destroy]

  # GET /carmodels
  # GET /carmodels.json
  def index
    @carmodels = Carmodel.all
  end

  # GET /carmodels/1
  # GET /carmodels/1.json
  def show
      @carmodel = Carmodel.find(params[:id])
    @cart_action = @carmodel.cart_action current_customer.try :id
  end

  # GET /carmodels/new
  def new
    @carmodel = Carmodel.new
  end

  # GET /carmodels/1/edit
  def edit
  end

  # POST /carmodels
  # POST /carmodels.json
  def create
    @carmodel = Carmodel.new(carmodel_params)

    respond_to do |format|
      if @carmodel.save
        format.html { redirect_to @carmodel, notice: 'Carmodel was successfully created.' }
        format.json { render :show, status: :created, location: @carmodel }
      else
        format.html { render :new }
        format.json { render json: @carmodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carmodels/1
  # PATCH/PUT /carmodels/1.json
  def update
    respond_to do |format|
      if @carmodel.update(carmodel_params)
        format.html { redirect_to @carmodel, notice: 'Carmodel was successfully updated.' }
        format.json { render :show, status: :ok, location: @carmodel }
      else
        format.html { render :edit }
        format.json { render json: @carmodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carmodels/1
  # DELETE /carmodels/1.json
  def destroy
    @carmodel.destroy
    respond_to do |format|
      format.html { redirect_to carmodels_url, notice: 'Carmodel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carmodel
      @carmodel = Carmodel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carmodel_params
      params.require(:carmodel).permit(:type1, :fuel1, :range1, :speed1, :pollution1)
    end
end
