module API
  module V1
    class ApiController < ApplicationController
      before_filter :verify_secret_key!
      after_filter :set_access_control_headers

      def set_access_control_headers
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept'
        headers['Access-Control-Request-Method'] = '*'
        headers['Access-Control-Allow-Methods'] = 'GET'
      end

      def verify_secret_key!
        if (params[:api_key] != ApiGithub::Application.config.secret_api_key)
          render json: {
            message: "You is not authorized"
          }, status: :unauthorized
        end
        params.delete :api_key
      end

    end
  end
end
