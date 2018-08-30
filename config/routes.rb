Rails.application.routes.draw do
	
  resources :comments
  root 'welcome#feed'

  get "categorical" => 'posts#items_by_category'

  get 'show_user' => 'welcome#show_user'

  get 'now_following' => 'welcome#now_following'

  get 'unfollow' => 'welcome#unfollow'


  resources :posts
  devise_for :users
end