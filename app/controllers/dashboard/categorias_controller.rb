class Dashboard::CategoriasController < ApplicationController
  before_action :set_dashboard_categoria, only: %i[ show edit update destroy ]

  # GET /dashboard/categorias or /dashboard/categorias.json
  def index
    @dashboard_categorias = Dashboard::Categoria.all
  end

  # GET /dashboard/categorias/1 or /dashboard/categorias/1.json
  def show
  end

  # GET /dashboard/categorias/new
  def new
    @dashboard_categoria = Dashboard::Categoria.new
  end

  # GET /dashboard/categorias/1/edit
  def edit
  end

  # POST /dashboard/categorias or /dashboard/categorias.json
  def create
    @dashboard_categoria = Dashboard::Categoria.new(dashboard_categoria_params)

    respond_to do |format|
      if @dashboard_categoria.save
        format.html { redirect_to @dashboard_categoria, notice: "Categoria was successfully created." }
        format.json { render :show, status: :created, location: @dashboard_categoria }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dashboard_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashboard/categorias/1 or /dashboard/categorias/1.json
  def update
    respond_to do |format|
      if @dashboard_categoria.update(dashboard_categoria_params)
        format.html { redirect_to @dashboard_categoria, notice: "Categoria was successfully updated." }
        format.json { render :show, status: :ok, location: @dashboard_categoria }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dashboard_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashboard/categorias/1 or /dashboard/categorias/1.json
  def destroy
    @dashboard_categoria.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_categorias_url, notice: "Categoria was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard_categoria
      @dashboard_categoria = Dashboard::Categoria.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dashboard_categoria_params
      params.require(:dashboard_categoria).permit(:nome, :descricao)
    end
end
