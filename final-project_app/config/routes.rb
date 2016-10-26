Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#home"

  get "/teams/:team_id", to: "teams#show", as: "team"

end
