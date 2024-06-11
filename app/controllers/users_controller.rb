class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update]

    def show
    end

    def edit
    end

    def update
      if current_user.update(user_params)
        redirect_to mypage_path, notice:'登録情報が更新されました。'
      else
        render :edit
      end
    end

    private 
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email)
    end
  end
  