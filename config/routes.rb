Rails.application.routes.draw do
  resources :main_pages
  resources :transactions
  resources :accounts

  get   '/accounts/:account_id/transactions',          to: 'transactions#index', as: 'account_transactions'
  post  '/accounts/:account_id/transactions',          to: 'transactions#create'
  get   '/accounts/:account_id/transactions/new',      to: 'transactions#new', as: 'new_account_transaction'
  get   '/accounts/:account_id/transactions/:id',      to: 'transactions#show', as: 'account_transaction'
  get   '/accounts/:account_id/transactions/:id/edit', to: 'transactions#edit', as: 'edit_account_transaction'
  patch '/accounts/:account_id/transactions/:id',      to: 'transactions#update'
  delete'/accounts/:account_id/transactions/:id',      to: 'transactions#destroy'


  resources :high_scores
    resources :posts
    get '/pages', to: 'pages#index' # get requests for the '/pages' path should go to the pages controller's index method
end