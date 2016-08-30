require File.expand_path('lib/omniauth/strategies/todo', Rails.root)

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :todo, '2dc86538975b87b3fe430ea98a2ca38c79b6a6ac2571f534f13b02af9cd3632a', '870fbb17615a12d2ebd2c560f0eb718a45b37bf3cca205514c120cb2392955c0'
end
