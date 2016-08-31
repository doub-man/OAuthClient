require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Todo < OmniAuth::Strategies::OAuth2
      option :name, :todo

      option :client_options, {
        site: 'http://localhost:3000',
        authorize_path: "/oauth/authorize"
      }

      uid do
        raw_info["user"]["id"]
      end

      info do
        {
          email: raw_info["user"]["email"]
        }
      end

      def raw_info
        @raw_info ||= access_token.get("/api/me").parsed
      end

    end
  end
end
