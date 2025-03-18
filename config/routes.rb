Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :generator_data do
    collection do
      get 'dados_pessoa'
      post 'gerador_pessoa'
    end
  end
  root "generator_data#index"
end
