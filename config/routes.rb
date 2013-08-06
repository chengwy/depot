Depot::Application.routes.draw do
  get "comments/create"

  get "comments/destroy"

  get 'admin' => 'admin#index'

  #get 'search'=> 'products#search'

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  controller :products do
    get 'search' => :search
  end

  scope '(:locale)' do
    resources :users
    resources :orders
    resources :line_items
    resources :carts
    resources :products do
	  resources :comments  

      get :who_bought, :on => :member
    end
    get 'search'=> 'products#search'
    root :to => 'store#index', :as => 'store'
  end
end