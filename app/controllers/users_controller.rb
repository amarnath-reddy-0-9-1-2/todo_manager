class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render plain: User.all.map { |user| user.to_clear_string }.join("\n")
  end

  def show
    id = params[:id]
    user = User.find(id)
    render plain: user.to_clear_string
  end

  def create
    user_name = params[:user_name]
    user_email = params[:user_email]
    user_password = params[:user_password]
    new_user = User.create!(
      user_name: user_name,
      user_email: user_email,
      user_password: user_password,
    )
    render plain: "Hey! welcome you registered successfully with an id #{new_user.id}"
  end
end
