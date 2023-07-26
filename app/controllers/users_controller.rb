class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        if @user.update(user_params)
            format.json {render :show, status: :ok, location: @user}
        else
            format.json {render json: @user.errors, status: :unprocessable_entity}
        end
    end
    
    def create
        @user = User.new(user_params)

        if @user.save
            format.json {render :show, status: :created, location: @user}
        else
            format.json {render json: @user.erros, status: :unprocessable_entity}
        end
    end

    def destory
        @user = User.find(params[:id])
        @user.destory
    end

    private
    def user_params
        params.require(:user).permit(:name, :age, :gender)
    end
end
