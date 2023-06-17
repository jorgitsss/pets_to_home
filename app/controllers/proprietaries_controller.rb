class ProprietariesController < ApplicationController
  before_action :set_proprietary, only: %i[ show edit update destroy ]

  # GET /proprietaries or /proprietaries.json
  def index
    @proprietaries = Proprietary.all
  end

  # GET /proprietaries/1 or /proprietaries/1.json
  def show
  end

  # GET /proprietaries/new
  def new
    @proprietary = Proprietary.new
  end

  # GET /proprietaries/1/edit
  def edit
  end

  # POST /proprietaries or /proprietaries.json
  def create
    @proprietary = Proprietary.new(proprietary_params)

    respond_to do |format|
      if @proprietary.save
        format.html { redirect_to proprietary_url(@proprietary), notice: "Proprietary was successfully created." }
        format.json { render :show, status: :created, location: @proprietary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proprietary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proprietaries/1 or /proprietaries/1.json
  def update
    respond_to do |format|
      if @proprietary.update(proprietary_params)
        format.html { redirect_to proprietary_url(@proprietary), notice: "Proprietary was successfully updated." }
        format.json { render :show, status: :ok, location: @proprietary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proprietary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proprietaries/1 or /proprietaries/1.json
  def destroy
    @proprietary.destroy

    respond_to do |format|
      format.html { redirect_to proprietaries_url, notice: "Proprietary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proprietary
      @proprietary = Proprietary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proprietary_params
      params.require(:proprietary).permit(:name, :email, :password)
    end
end
