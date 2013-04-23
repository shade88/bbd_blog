BbdBlog::Application.routes.draw do
  #resources :users do
  #  resources :messages do
  #    collection do
  #      post :delete_selected
  #    end
  #  end
  #end

  devise_for :users  #for devise authorisation paths

  #match '/sign_up'=>'devise/sessions#new'

  devise_scope :user do
    get "sign_up", :to => "devise/registrations#new"   #for /sign_up and  #sign_up_path
    get "sign_in", :to => "devise/sessions#new"        #for /sign_in and  sign_in_path
  end

  resources :comments, :users, :blog_messages    #for /user/id/edit /user/new etc. paths

  resources :blog_messages do
  #get :incr_rating, :on => :member
  #get :decr_rating, :on => :member
    member do
      put :incr_rating
      put :decr_rating
    end
  end
  #resource :session, :only => [:new, :create, :destroy]

  #resources :users    do
  #  resources :blog_messages
  #end


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'blog_messages#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
