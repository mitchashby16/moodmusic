Rails.application.routes.draw do
  root 'welcome#index'
  get 'auth/twitter/callback', to: 'sessions#create'
  get 'mad', to: 'users#mad'
  get 'sad', to: 'users#sad'
  get 'upset', to: 'users#upset'
  get 'uncomfortable', to: 'users#uncomfortable'
  get 'calm', to: 'users#calm'
  get 'content', to: 'users#content'
  get 'happy', to: 'users#happy'
  get 'excited', to: 'users#excited'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'excited', to: 'exciteds#index'
    end
  end
end
