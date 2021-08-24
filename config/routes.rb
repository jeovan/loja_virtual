Rails.application.routes.draw do

  devise_for :usuarios, :path_names => {
    :sign_in => 'entrar'
  }
  namespace :dashboard do
    resources :home, :path => '/'
  end


  namespace :loja, :path => '/' do
    resources :home, :path => '/'
  end

end
