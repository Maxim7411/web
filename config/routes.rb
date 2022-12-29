Rails.application.routes.draw do
root 'posts#main', as:'home'
resources :posts
end
