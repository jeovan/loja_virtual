Rails.application.routes.draw do

  namespace :dashboard do
    resources :home, :path => '/'
  end


  namespace :loja, :path => '/' do
    resources :home, :path => '/'
  end

end
