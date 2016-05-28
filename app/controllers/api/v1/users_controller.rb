module API
  module V1
    class UsersController < ApiController
      before_filter :set_user, only: [:show]

      def index
        if !params[:name].nil?
          @user = User.new(params[:name])
          @users = @user.search
          respond_with @users
        else
          @users = []
        end
      end

      def show
        respond_with @user
      end

      private

      def set_user
        @user = User.repos(params[:id])
      end

    end
  end
end
