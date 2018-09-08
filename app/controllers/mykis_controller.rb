class MykisController < ApplicationController
  before_action :set_myki, only: [:show, :edit, :update, :destroy]

  # GET /mykis
  # GET /mykis.json
  def index
    @mykis = Myki.all
  end

  # GET /mykis/1
  # GET /mykis/1.json
  def show
  end

  # GET /mykis/new
  def new
    @myki = Myki.new
  end

  # GET /mykis/1/edit
  def edit
  end

  # POST /mykis
  # POST /mykis.json
  def create
    @myki = Myki.new(myki_params)

    respond_to do |format|
      if @myki.save
        format.html { redirect_to @myki, notice: 'Myki was successfully created.' }
        format.json { render :show, status: :created, location: @myki }
      else
        format.html { render :new }
        format.json { render json: @myki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mykis/1
  # PATCH/PUT /mykis/1.json
  def update
    respond_to do |format|
      if @myki.update(myki_params)
        format.html { redirect_to @myki, notice: 'Myki was successfully updated.' }
        format.json { render :show, status: :ok, location: @myki }
      else
        format.html { render :edit }
        format.json { render json: @myki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mykis/1
  # DELETE /mykis/1.json
  def destroy
    @myki.destroy
    respond_to do |format|
      format.html { redirect_to mykis_url, notice: 'Myki was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myki
      @myki = Myki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myki_params
      params.require(:myki).permit(:number, :user_id)
    end
end
