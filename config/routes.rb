Rails.application.routes.draw do
  root 'static_pages#home'
  
  # usersコントローラー
  get  '/signup', to: 'users#new'
  get '/edit-basic-info/:id', to: 'users#edit_basic_info', as: :basic_info
  patch 'update-basic-info', to: 'users#update_basic_info'
  get  '/attendance_log', to: 'users#attendance_log'
  get  '/working_users', to: 'users#working_users'
  get  '/base_edit', to: 'users#base_edit'
  
  #拠点テスト
  get  '/test00', to: 'users#test00'
  #get  '/test00/:id', to: 'users#test00', as: :test
  #patch 'update-test00', to: 'users#update_test00'
  
  #テスト発展
  get  '/test01/:id', to: 'users#test01', as: :test01
  patch 'update-test01', to: 'users#update_test01'
  
  #get  '/test00/:id', to: 'users#base_edit', as: :test00
  #patch 'update-test00', to: 'users#update_test01'
  
  
  # sessionsコントローラー
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  # users>attendancesコントローラー
  get 'users/:id/attendances/:date/edit', to: 'attendances#edit', as: :edit_attendances
  patch 'users/:id/attendances/:date/update', to: 'attendances#update', as: :update_attendances
  
  resources :users do
    resources :attendances, only: :create
    
    #拠点編集ページルーティング
    collection do
      #get  'base_edit'
      #post 'base_add'
      
      #get 'base_update'
      
      delete 'base_delete'
      #get 'base_edit_modal'
    end
    
    member do
      #ユーザー覧編集機能のため追加 membr do でルーティングする方法が不明（ない場合noMETHODエラー）
      patch  'update_by_admin'  #, as: :update_by_admin　ルートに名前をつける必要なし
    end
    
  end
  
end