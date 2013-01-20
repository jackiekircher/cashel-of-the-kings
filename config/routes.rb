CashelOfTheKings::Application.routes.draw do

  resources :lobbies, :only => [:new, :create, :show] do
    member do
      get 'join'
    end
  end

  root :to => 'LobbiesController#new'

end
