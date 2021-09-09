class Loja::HomeController < ApplicationController
  skip_before_action :authenticate_usuario!
  layout 'loja'

  def index
    if params[:nome].present?
      @produtos = Dashboard::Produto.where(" nome like :nome",{:nome => "%#{params[:nome]}%"}).all
    else
      @produtos = Dashboard::Produto.all
    end
    
  end

  def add_carrinho
    @produto = Dashboard::Produto.select(:id,:quantidade).find(params[:id_produto])
    if @produto.present?
      if session[:carrinho].select{|id_produto| id_produto == @produto.id }.length >= @produto.quantidade
        @error = "Não é possivel adicionar mais de #{@produto.quantidade} itens desse produto"
      else
        session[:carrinho].push(@produto.id)
      end 
  
      # puts session[:carrinho]
    end
  end

end
