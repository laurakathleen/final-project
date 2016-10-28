Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#home'

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  get '/teams/new', to: 'teams#new', as: 'new_team'
  post '/teams/', to: 'teams#create'
  get '/teams/:team_id', to: 'teams#show', as: 'team'

  get '/teammates/new', to: 'teammates#new', as: 'new_teammate'
  post '/teammates', to: 'teammates#create'
  get '/teams/:team_id/teammates/:teammate_id', to: 'teammates#show', as: 'teammate'

  get '/teams/:team_id/teammates/:teammate_id/logs', to: 'logs#index', as: 'logs'
  get '/teams/:team_id/teammates/:teammate_id', to: 'logs#new', as: 'new_log'
  post '/teams/:team_id/teammates/:teammate_id', to: 'logs#create'
  get '/teams/:team_id/teammates/:teammate_id', to: 'logs#show', as: 'log'
  get '/teams/:team_id/teammates/:teammate_id/logs', to: 'logs#edit', as: 'edit_log'
  patch '/teams/:team_id/teammates/:teammate_id/logs', to: 'logs#update'
  delete '/teams/:team_id/teammates/:teammate_id/logs', to: 'logs#destroy'

end
