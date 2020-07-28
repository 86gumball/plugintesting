class UsersController < Clearance::UsersController
  def update
    @user = User.find(params[:id])
    @user.toggle!(:admin)
    flash[:sucess] = 'OK!'
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
