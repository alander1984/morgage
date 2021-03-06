Rails.application.routes.draw do

  resources :insurances
  resources :credits
  resources :works
  resources :options
  resources :options
  resources :products
  resources :options
  resources :requests
  resources :people
  resources :activity
  root "navigate#start"

  get '/products/:id/addOption/:opId' => 'products#addOption'
  get '/products/:id/removeOption/:opId' => 'products#removeOption'
  get '/products/:id/addInsurance/:insuranceId' => 'products#addInsurance'
  get '/products/:id/removeInsurance/:insuranceId' => 'products#removeInsurance'
  get '/options/:id/addProduct/:prId' => 'options#addProduct'
  get '/options/:id/removeProduct/:prId' => 'options#removeProduct'
  get '/options/:id/addOption/:opId' => 'options#addOption'
  get '/options/:id/removeOption/:opId' => 'options#removeOption'
  get 'products/action/sendAddOptionForm' => 'products#sendAddOptionForm'

  get 'process/issuanceStart', as: :startIssuance

  get 'searchPersonPr1/:searchString' => "process#searchPersonPr1"
  get '/process/refreshReqByPers/:person_id' => "process#refreshReqByPers"
  get '/process/refreshShortReqInfo/:request_id' => "process#refreshShortReqInfo"
  get '/selectProduct' => "process#selectProduct"
  get '/process/:process_id/refreshOptionList/:product_id' => "process#refreshOptionList"
  get '/process/:process_id/addOption/:option_id' => "process#addOption"
  get '/process/:process_id/removeOption/:option_id' => "process#removeOption"
  get '/setProcessInsurance/:process_id' => "activity#setInsuranse", as: :activity_ins
  get '/setProcessAgreement/:process_id' => "activity#setAgreement", as: :activity_agr
  get '/activity/:process_id/addInsurance/:insurance_id' => "activity#addInsurance"
  get '/activity/:process_id/removeInsurance/:insurance_id' => "activity#removeInsurance"
  post 'activity/:process_id/addDocument' => "activity#addDocument"
  post 'activity/:process_id/addAgreement' => "activity#addAgreement"
  post 'activity/:process_id/note' => "activity#addNote"
  get '/activity/:process_id/checkInsurance' => "activity#checkInsurance"
  get 'activity/:process_id/removeDoc/:document_id'=> "activity#removeDoc"
  get 'search/:searchString' => 'navigate#search'

  get 'redirectToIns/:process_id' => "activity#redirectToIns", as: :activity_toIns
  get 'redirectToProd/:process_id' => "activity#redirectToProd", as: :activity_toProd

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
