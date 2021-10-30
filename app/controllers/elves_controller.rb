class ElvesController < ApplicationController
  before_action :set_elf, only: %i[ show edit update destroy ]

  # GET /elves or /elves.json
  def index
    @elves = Elf.all
  end

  # GET /elves/1 or /elves/1.json
  def show
  end

  # GET /elves/new
  def new
    @elf = Elf.new
  end

  # GET /elves/1/edit
  def edit
  end

  # POST /elves or /elves.json
  def create
    @elf = Elf.new(elf_params)

    respond_to do |format|
      if @elf.save
        format.html { redirect_to @elf, notice: "Elf was successfully created." }
        format.json { render :show, status: :created, location: @elf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @elf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elves/1 or /elves/1.json
  def update
    respond_to do |format|
      if @elf.update(elf_params)
        format.html { redirect_to @elf, notice: "Elf was successfully updated." }
        format.json { render :show, status: :ok, location: @elf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @elf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elves/1 or /elves/1.json
  def destroy
    @elf.destroy
    respond_to do |format|
      format.html { redirect_to elves_url, notice: "Elf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elf
      @elf = Elf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def elf_params
      params.require(:elf).permit(:name, :level, :damage)
    end
end
