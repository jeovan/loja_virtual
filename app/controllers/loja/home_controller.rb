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
end
