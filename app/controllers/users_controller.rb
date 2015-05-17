class UsersController < ApplicationController
  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.csv { send_data @users.to_csv }
    end
  end

  def show

  end

  def create
    user = User.new(user_params)

    @user.save
    redirect_to @user
  end

  def import
    User.import(params[:file])
    redirect_to root_url, notice: "User imported"
  end

  private
  def user_params
    params.require(:user).permit!
  end

  def permit!
    each_pair do |key, value|
      convert_hashes_to_parameters(key, value)
      self[key].permit! if self[key].respond_to? :permit!
    end

    @permitted = true
    self
  end
end
