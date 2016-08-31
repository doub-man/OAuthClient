# 使用 OAuth2 登陆
class OauthSessionsController < ApplicationController
  def create
    binding.pry
    render json: { root: env["omniauth.auth"].to_json }
  end
end
