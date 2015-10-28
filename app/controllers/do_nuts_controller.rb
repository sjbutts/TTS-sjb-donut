class DoNutsController < ApplicationController
  before_action :set_do_nut, only: [:show, :edit, :update, :destroy]

def home
end
  # GET /do_nuts
  # GET /do_nuts.json
  def index
    @do_nuts = DoNut.all
  end

  # GET /do_nuts/1
  # GET /do_nuts/1.json
  def show
  end

  # GET /do_nuts/new
  def new
    @do_nut = DoNut.new
  end

  # GET /do_nuts/1/edit
  def edit
  end

  # POST /do_nuts
  # POST /do_nuts.json
  def create
    @do_nut = DoNut.new(do_nut_params)

    respond_to do |format|
      if @do_nut.save
        format.html { redirect_to @do_nut, notice: 'Do nut was successfully created.' }
        format.json { render :show, status: :created, location: @do_nut }
      else
        format.html { render :new }
        format.json { render json: @do_nut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /do_nuts/1
  # PATCH/PUT /do_nuts/1.json
  def update
    respond_to do |format|
      if @do_nut.update(do_nut_params)
        format.html { redirect_to @do_nut, notice: 'Do nut was successfully updated.' }
        format.json { render :show, status: :ok, location: @do_nut }
      else
        format.html { render :edit }
        format.json { render json: @do_nut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /do_nuts/1
  # DELETE /do_nuts/1.json
  def destroy
    @do_nut.destroy
    respond_to do |format|
      format.html { redirect_to do_nuts_url, notice: 'Do nut was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_do_nut
      @do_nut = DoNut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def do_nut_params
      params.require(:do_nut).permit(:name, :string, :toppings, :price, :image)
    end
end
