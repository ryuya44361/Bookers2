class UsersController < ApplicationController
before_action :authenticate_user!



def index
  @users = User.all
  @user = current_user
  @booknew = Book.new
end

def show
  @user = User.find(params[:id])
  @book = @user.books
  @booknew = Book.new


end

def edit
  @user = User.find(params[:id])
  if @user != current_user
    redirect_to user_path(current_user)
  else
    render :edit
  end
end

 def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user)
    else
      render :edit
    end
 end


private

  def user_params
   params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
end