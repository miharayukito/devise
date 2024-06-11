class MypageController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user, only:[:show, :edit, :update]

    def show
    end

    def edit
    end

    def update
      if @user.update(user_params)
        redirect_to users_path, notice:'登録情報が更新されました。'
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
  
