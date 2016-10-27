Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#home'

  get '/teams/:team_id', to: 'teams#show', as: 'team'

  get '/teammates/new', to: 'teammates#new', as: 'new_teammate'
  post '/teammates', to: 'teammates#create'
  get '/teammates/:teammate_id', to: 'teammates#show', as: 'teammate'

  get '/teammates/:teammate_id/logs', to: 'logs#index', as: 'logs'
  get '/teammates/:teammate_id/logs/new', to: 'logs#new', as: 'new_log'
  post '/teammates/:teammate_id/logs', to: 'logs#create'
  get '/teammates/:teammate_id/logs/:log_id', to: 'logs#show', as: 'log'
  get '/teammates/:teammate_id/logs/:log_id/edit', to: 'logs#edit', as: 'edit_log'
  patch '/teammates/:teammate_id/logs/:log_id', to: 'logs#update'
  delete '/teammates/:teammate_id/logs/:log_id', to: 'logs#destroy'

end
