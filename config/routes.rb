Rails.application.routes.draw do
  
  root 'contents#index' #ルートパスの表示
  
  resources :products, except: [:show]
  
  resources :carts, only: [:index, :destroy] do
    member do
      post :create
    end
  end
  
  resources :orders, only: [:index, :new, :create, :update] do
    collection do
      get :done
    end
  end
  
  get ':path' => 'products#show' #製品ページの表示
  
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #post 'carts/:id' => 'carts#create' #カートに商品を入れる
  #get 'carts/index' => 'carts#index' #カートの中を表示
  #delete 'carts/:id' => 'carts#destroy' #カートの商品を削除する
  
  #resources :tweets do
    #resources :comments, only: [:create]
  #end
  
  #resources :products, except: [:show]
  
  #resources :carts, only: [:index, :destroy] do
    #member do
      #post :create
    #end
  #end
  
  #resources :orders, only: [:index, :new, :create, :update] do
    #collection do
      #get :done
    #end
  #end