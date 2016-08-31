require File.expand_path('lib/omniauth/strategies/todo', Rails.root)

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :todo, ENV['todo_app_id'], ENV['todo_app_secret']
end
