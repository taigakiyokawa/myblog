class OremeshisController < ApplicationController
  before_action :set_oremeshi, only: [:show, :edit, :update, :destroy]

  # GET /oremeshis
  # GET /oremeshis.json
  def index
    @oremeshis = Oremeshi.all
  end

  # GET /oremeshis/1
  # GET /oremeshis/1.json
  def show
  end

  # GET /oremeshis/new
  def new
    @oremeshi = Oremeshi.new
  end

  # GET /oremeshis/1/edit
  def edit
  end

  # POST /oremeshis
  # POST /oremeshis.json
  def create
    @oremeshi = Oremeshi.new(oremeshi_params)

    respond_to do |format|
      if @oremeshi.save
        format.html { redirect_to @oremeshi, notice: 'Oremeshi was successfully created.' }
        format.json { render :show, status: :created, location: @oremeshi }
      else
        format.html { render :new }
        format.json { render json: @oremeshi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oremeshis/1
  # PATCH/PUT /oremeshis/1.json
  def update
    respond_to do |format|
      if @oremeshi.update(oremeshi_params)
        format.html { redirect_to @oremeshi, notice: 'Oremeshi was successfully updated.' }
        format.json { render :show, status: :ok, location: @oremeshi }
      else
        format.html { render :edit }
        format.json { render json: @oremeshi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oremeshis/1
  # DELETE /oremeshis/1.json
  def destroy
    @oremeshi.destroy
    respond_to do |format|
      format.html { redirect_to oremeshis_url, notice: 'Oremeshi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oremeshi
      @oremeshi = Oremeshi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oremeshi_params
      params.require(:oremeshi).permit(:title, :ingre, :step1, :step2, :step3, :step4, :final, :time, :category, :finalimage, :image1, :image2, :image3, :image4)
    end
end
