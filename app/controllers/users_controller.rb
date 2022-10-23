class UsersController < ApplicationController
  
def index
  @users = User.all
  @user = current_user
  @book = Book.find(@user.id)
end
  
def show
  @user = User.find(params[:id])
  @book = Book.find(params[:id])
  @books = @user.books
end

def edit
end
  
end

private

  def user_params
   params.require(:user).permit(:name, :image, :introduction)
  end