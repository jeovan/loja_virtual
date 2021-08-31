class Dashboard::ProdutosController < ApplicationController
  before_action :set_dashboard_produto, only: %i[ show edit update destroy ]
  # layout 'dashboard'
  # GET /dashboard/produtos or /dashboard/produtos.json
  def index
    @dashboard_produtos = Dashboard::Produto.all
  end

  # GET /dashboard/produtos/1 or /dashboard/produtos/1.json
  def show
  end

  # GET /dashboard/produtos/new
  def new
    @dashboard_produto = Dashboard::Produto.new
  end

  # GET /dashboard/produtos/1/edit
  def edit
  end

  # POST /dashboard/produtos or /dashboard/produtos.json
  def create
    @dashboard_produto = Dashboard::Produto.new(dashboard_produto_params)

    respond_to do |format|
      if @dashboard_produto.save
        format.html { redirect_to @dashboard_produto, notice: "Produto was successfully created." }
        format.json { render :show, status: :created, location: @dashboard_produto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dashboard_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashboard/produtos/1 or /dashboard/produtos/1.json
  def update
    respond_to do |format|
      if @dashboard_produto.update(dashboard_produto_params)
        format.html { redirect_to @dashboard_produto, notice: "Produto was successfully updated." }
        format.json { render :show, status: :ok, location: @dashboard_produto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dashboard_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashboard/produtos/1 or /dashboard/produtos/1.json
  def destroy
    @dashboard_produto.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_produtos_url, notice: "Produto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard_produto
      @dashboard_produto = Dashboard::Produto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dashboard_produto_params
      params.require(:dashboard_produto).permit(:nome, :descricao, :preco, :quantidade, :categoria_id)
    end
end
