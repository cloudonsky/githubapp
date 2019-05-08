class BlasController < ApplicationController
  before_action :set_bla, only: [:show, :edit, :update, :destroy]

  # GET /blas
  # GET /blas.json
  def index
    @blas = Bla.all
  end

  # GET /blas/1
  # GET /blas/1.json
  ## Testing auto merge
  def show
  end

  # GET /blas/new
  # old changes
  def new
    @bla = Bla.new
  end

  # GET /blas/1/edit
  def edit
  end

  # POST /blas
  # POST /blas.json
  def create
    @bla = Bla.new(bla_params)

    respond_to do |format|
      if @bla.save
        format.html { redirect_to @bla, notice: 'Bla was successfully created.' }
        format.json { render :show, status: :created, location: @bla }
      else
        format.html { render :new }
        format.json { render json: @bla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blas/1
  # PATCH/PUT /blas/1.json
  def update
    respond_to do |format|
      if @bla.update(bla_params)
        format.html { redirect_to @bla, notice: 'Bla was successfully updated.' }
        format.json { render :show, status: :ok, location: @bla }
      else
        format.html { render :edit }
        format.json { render json: @bla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blas/1
  # DELETE /blas/1.json
  def destroy
    @bla.destroy
    respond_to do |format|
      format.html { redirect_to blas_url, notice: 'Bla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bla
      @bla = Bla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bla_params
      params.require(:bla).permit(:name)
    end
end
