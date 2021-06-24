class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
 skip_before_action :login_required, only: [:new, :create]
  # GET /posts or /posts.json
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end
  def create
      @user = User.new(user_params)
      if @user.save
        UserMailer.posting_email(@user).deliver
        redirect_to user_path(@user), notice: "Account was successfully created"
      else
        render :new
      end
    end

    def show
      @user = User.find(params[:id])
      end

    private
    def set_user
    @user = User.find(params[:id])
    end
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :image, :image_cache)
  end

  end
