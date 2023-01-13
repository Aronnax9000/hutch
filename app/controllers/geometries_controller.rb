class GeometriesController < ApplicationController
  before_action :set_geometry, only: %i[ show edit update destroy ]

  # GET /geometries or /geometries.json
  def index
    @geometries = Geometry.all
  end

  # GET /geometries/1 or /geometries/1.json
  def show
  end

  # GET /geometries/new
  def new
    @geometry = Geometry.new
  end

  # GET /geometries/1/edit
  def edit
  end

  # POST /geometries or /geometries.json
  def create
    @geometry = Geometry.new(geometry_params)

    respond_to do |format|
      if @geometry.save
        format.html { redirect_to geometry_url(@geometry), notice: "Geometry was successfully created." }
        format.json { render :show, status: :created, location: @geometry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @geometry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geometries/1 or /geometries/1.json
  def update
    respond_to do |format|
      if @geometry.update(geometry_params)
        format.html { redirect_to geometry_url(@geometry), notice: "Geometry was successfully updated." }
        format.json { render :show, status: :ok, location: @geometry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @geometry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geometries/1 or /geometries/1.json
  def destroy
    @geometry.destroy

    respond_to do |format|
      format.html { redirect_to geometries_url, notice: "Geometry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geometry
      @geometry = Geometry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def geometry_params
      params.require(:geometry).permit(:name, :descripton, :x, :y, :z, :dx, :dy, :dz)
    end
end
