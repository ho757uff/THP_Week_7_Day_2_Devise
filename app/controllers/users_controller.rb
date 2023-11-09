class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @user = User.find(params[:id])
    # Make sure you handle the case where the user might not be found.
  end
end
