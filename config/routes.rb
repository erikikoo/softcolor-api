Rails.application.routes.draw do
  # get 'produto/:id', to: 'produtos#show'
  namespace :api do
    namespace :v1 do 
      resources :produtos
      resources :sistema_de_impressaos
      resources :politica_de_qualidades
      resources :material_coletados
      resources :sustentabilidades
      resources :emails
      resources :telefones
      resources :contatos
      resources :nossa_historia
      resources :quem_somos
      resources :homes
      post 'orcamento_send', to: 'orcamento#send_orcamento'
      get 'produtos_all', to: 'produtos#all_produtos'
      get 'telefone_principal', to: 'telefones#principal'
      get 'email_principal', to: 'emails#principal'
      get 'email_status/:id', to: 'emails#status'
      get 'telefone_status/:id', to: 'telefones#status'
      post 'auth/register', to: 'users#register'
      post 'auth/login', to: 'users#login'
      get 'test', to: 'users#test'
      
      resources :banner_principals
      resources :users
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
