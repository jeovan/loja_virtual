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

  def finalizar_compra
    id_produtos = session[:carrinho].uniq
    @produtos = Dashboard::Produto.where(:id => id_produtos)

  end

  def finalizar_pedido

    id_produtos = session[:carrinho].uniq
    @produtos = Dashboard::Produto.where(:id => id_produtos)

    @pedido = Pedido.new
    @pedido.usuario = current_usuario
    valor_total = 0

    @produtos.each do |produto|
      valor_total = valor_total + session[:carrinho].select{|id| id == produto.id}.length * produto.preco
    end

    @pedido.valor_total = valor_total
    @pedido.produtos = @produtos
    @pedido.save!

    session[:carrinho] = []


    redirect_to '/'

  end

end
