# 使用 OAuth2 登陆
class OauthSessionsController < ApplicationController
  def create
    render json: { '': request.env["omniauth.auth"] }
  end
end
