class Loja::HomeController < ApplicationController
  skip_before_action :authenticate_usuario!
end
