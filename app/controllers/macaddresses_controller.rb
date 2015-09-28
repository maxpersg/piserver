class MacaddressesController < ApplicationController
  before_action :set_macaddress, only: [:show, :edit, :update, :destroy]

  # GET /macaddresses
  # GET /macaddresses.json
  def index
    @macaddresses = Macaddress.all
  end

  # GET /macaddresses/1
  # GET /macaddresses/1.json
  def show
  end

  # GET /macaddresses/new
  def new
    @macaddress = Macaddress.new
  end

  # GET /macaddresses/1/edit
  def edit
  end

  # POST /macaddresses
  # POST /macaddresses.json
  def create
    @macaddress = Macaddress.new(macaddress_params)

    respond_to do |format|
      if @macaddress.save
        format.html { redirect_to @macaddress, notice: 'Macaddress was successfully created.' }
        format.json { render :show, status: :created, location: @macaddress }
      else
        format.html { render :new }
        format.json { render json: @macaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /macaddresses/1
  # PATCH/PUT /macaddresses/1.json
  def update
    respond_to do |format|
      if @macaddress.update(macaddress_params)
        format.html { redirect_to @macaddress, notice: 'Macaddress was successfully updated.' }
        format.json { render :show, status: :ok, location: @macaddress }
      else
        format.html { render :edit }
        format.json { render json: @macaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /macaddresses/1
  # DELETE /macaddresses/1.json
  def destroy
    @macaddress.destroy
    respond_to do |format|
      format.html { redirect_to macaddresses_url, notice: 'Macaddress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_macaddress
      @macaddress = Macaddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def macaddress_params
      params.require(:macaddress).permit(:macid, :description, :owner, :remarks)
    end
end
