class LuvsController < ApplicationController
  before_action :set_luv, only: [:show, :edit, :update, :destroy]

  # GET /luvs
  # GET /luvs.json
  def index
    @luvs = Luv.all
  end

  # GET /luvs/1
  # GET /luvs/1.json
  def show
  end

  # GET /luvs/new
  def new
    @luv = Luv.new
  end

  # GET /luvs/1/edit
  def edit
  end

  # POST /luvs
  # POST /luvs.json
  def create
    @luv = Luv.new(luv_params)

    respond_to do |format|
      if @luv.save
        format.html { redirect_to @luv, notice: 'Luv was successfully created.' }
        format.json { render :show, status: :created, location: @luv }
      else
        format.html { render :new }
        format.json { render json: @luv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /luvs/1
  # PATCH/PUT /luvs/1.json
  def update
    respond_to do |format|
      if @luv.update(luv_params)
        format.html { redirect_to @luv, notice: 'Luv was successfully updated.' }
        format.json { render :show, status: :ok, location: @luv }
      else
        format.html { render :edit }
        format.json { render json: @luv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /luvs/1
  # DELETE /luvs/1.json
  def destroy
    @luv.destroy
    respond_to do |format|
      format.html { redirect_to luvs_url, notice: 'Luv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_luv
      @luv = Luv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def luv_params
      params.fetch(:luv, {})
    end
end
