Rosemary::Application.routes.draw do
  match 'about' => 'store#about', :as => :about
  match 'press' => 'store#press', :as => :press
  match 'policies' => 'store#policies', :as => :policies
  match 'contact' => 'store#contact', :as => :contact
  match 'locations' => 'store#locations', :as => :locations

  match 'earrings' => 'product#earrings', :as => :earrings
  match 'necklaces' => 'product#necklaces', :as => :necklaces
  match 'product/:id' => 'product#oneproduct', :as => :item
  match 'rings' => 'product#rings', :as => :rings
  match 'custom' => 'product#custom', :as => :custom
  match 'collections' => 'product#collections', :as => :collections

  match 'previousItem' => 'product#previousItem', :as => :previous
  match 'nextItem' => 'product#nextItem', :as => :next

  root :to => "store#index"

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
