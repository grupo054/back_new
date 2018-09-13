class CategoriaNormasController < ApplicationController
  before_action :set_categoria_norma, only: [:show, :edit, :update, :destroy]

  # GET /categoria_normas
  # GET /categoria_normas.json
  def index
    @categoria_normas = CategoriaNorma.all
  end

  # GET /categoria_normas/1
  # GET /categoria_normas/1.json
  def show
  end

  # GET /categoria_normas/new
  def new
    @categoria_norma = CategoriaNorma.new
  end

  # GET /categoria_normas/1/edit
  def edit
  end

  # POST /categoria_normas
  # POST /categoria_normas.json
  def create
    @categoria_norma = CategoriaNorma.new(categoria_norma_params)

    respond_to do |format|
      if @categoria_norma.save
        format.html { redirect_to @categoria_norma, notice: 'Categoria norma was successfully created.' }
        format.json { render :show, status: :created, location: @categoria_norma }
      else
        format.html { render :new }
        format.json { render json: @categoria_norma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoria_normas/1
  # PATCH/PUT /categoria_normas/1.json
  def update
    respond_to do |format|
      if @categoria_norma.update(categoria_norma_params)
        format.html { redirect_to @categoria_norma, notice: 'Categoria norma was successfully updated.' }
        format.json { render :show, status: :ok, location: @categoria_norma }
      else
        format.html { render :edit }
        format.json { render json: @categoria_norma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria_normas/1
  # DELETE /categoria_normas/1.json
  def destroy
    @categoria_norma.destroy
    respond_to do |format|
      format.html { redirect_to categoria_normas_url, notice: 'Categoria norma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria_norma
      @categoria_norma = CategoriaNorma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categoria_norma_params
      params.require(:categoria_norma).permit(:descripcion)
    end
end
