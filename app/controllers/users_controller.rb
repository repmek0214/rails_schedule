class UsersController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!, except: [:index, :show]

  def index
  end

  def show
    @user = current_user
  end

  def account
  end

  def edit
  end

  def update
  end
end
