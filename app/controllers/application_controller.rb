class ApplicationController < ActionController::Base
  before_action :authenticate_usuario!
  before_action :carrinho

  def carrinho
    session[:carrinho] = [] if session[:carrinho].blank?
  end
end
