class DwarvesController < ApplicationController
  before_action :set_dwarf, only: %i[ show edit update destroy ]

  # GET /dwarves or /dwarves.json
  def index
    @dwarves = Dwarf.all
  end

  # GET /dwarves/1 or /dwarves/1.json
  def show
  end

  # GET /dwarves/new
  def new
    @dwarf = Dwarf.new
  end

  # GET /dwarves/1/edit
  def edit
  end

  # POST /dwarves or /dwarves.json
  def create
    @dwarf = Dwarf.new(dwarf_params)

    respond_to do |format|
      if @dwarf.save
        format.html { redirect_to @dwarf, notice: "Dwarf was successfully created." }
        format.json { render :show, status: :created, location: @dwarf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dwarf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dwarves/1 or /dwarves/1.json
  def update
    respond_to do |format|
      if @dwarf.update(dwarf_params)
        format.html { redirect_to @dwarf, notice: "Dwarf was successfully updated." }
        format.json { render :show, status: :ok, location: @dwarf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dwarf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dwarves/1 or /dwarves/1.json
  def destroy
    @dwarf.destroy
    respond_to do |format|
      format.html { redirect_to dwarves_url, notice: "Dwarf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dwarf
      @dwarf = Dwarf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dwarf_params
      params.require(:dwarf).permit(:name, :height, :armor_class)
    end
end
