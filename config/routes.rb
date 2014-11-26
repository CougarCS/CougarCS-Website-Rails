CougarCSWebsite::Application.routes.draw do
  devise_for :authors
  resources :authors, :except => [:index]
  
  resources :posts, :except => [:index]
  
  match '/about', to: 'static_pages#about', via: [:get]
  match '/contact', to: 'static_pages#contact', via: [:get]
  match '/officers', to: 'static_pages#officers', via: [:get]
  match '/hackathons', to: 'static_pages#hackathons', via: [:get]
  match '/social_events', to: 'static_pages#social_events', via: [:get]
  match '/calendar', to: 'static_pages#calendar', via: [:get]
  match '/business_contact_form', to: 'static_pages#business_contact_form', via: [:get]
  match '/sponsors', to: 'static_pages#sponsors', via: [:get]
  match '/become_a_member', to: 'static_pages#become_a_member', via: [:get]
  match '/lightning_talks', to: 'static_pages#lightning_talks', via: [:get]
  
  get 'sign-in', to: redirect("/authors/sign_in")
  
  
  root 'static_pages#home'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
