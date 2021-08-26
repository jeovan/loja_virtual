Rails.application.routes.draw do

  
  namespace :dashboard do
    resources :categorias
  end
  namespace :dashboard do
    resources :produtos
  end
  devise_for :usuarios, :path_names => {
    :sign_in  => 'entrar',
    :sign_out => 'sair',
    :sign_up  => 'cadastrar',
    :password => 'senha'
  }, controllers: {
    registrations: 'usuarios/registrations',
    sessions: 'usuarios/sessions'
  }
  namespace :dashboard do
      resources :home, :path => '/'
  end


  namespace :loja, :path => '/' do
    resources :home, :path => '/'
  end

end
