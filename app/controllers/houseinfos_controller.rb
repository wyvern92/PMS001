class HouseinfosController < ApplicationController
  before_action :set_houseinfo, only: [:show, :edit, :update, :destroy]

  # GET /houseinfos
  # GET /houseinfos.json
  def index
    @houseinfos = Houseinfo.all
  end

  # GET /houseinfos/1
  # GET /houseinfos/1.json
  def show
  end

  # GET /houseinfos/new
  def new
    @houseinfo = Houseinfo.new
  end

  # GET /houseinfos/1/edit
  def edit
  end

  # POST /houseinfos
  # POST /houseinfos.json
  def create
    @houseinfo = Houseinfo.new(houseinfo_params)

    respond_to do |format|
      if @houseinfo.save
        format.html { redirect_to @houseinfo, notice: 'Houseinfo was successfully created.' }
        format.json { render :show, status: :created, location: @houseinfo }
      else
        format.html { render :new }
        format.json { render json: @houseinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /houseinfos/1
  # PATCH/PUT /houseinfos/1.json
  def update
    respond_to do |format|
      if @houseinfo.update(houseinfo_params)
        format.html { redirect_to @houseinfo, notice: 'Houseinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @houseinfo }
      else
        format.html { render :edit }
        format.json { render json: @houseinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /houseinfos/1
  # DELETE /houseinfos/1.json
  def destroy
    @houseinfo.destroy
    respond_to do |format|
      format.html { redirect_to houseinfos_url, notice: 'Houseinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_houseinfo
      @houseinfo = Houseinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def houseinfo_params
      params.require(:houseinfo).permit(:house_id, :house_addrs, :house_description, :house_price, :house_guest)
    end
end
