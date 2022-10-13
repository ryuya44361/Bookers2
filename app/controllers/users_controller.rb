class UsersController < ApplicationController
  
def index
  @users = Users.all
end
  
def show
   @user = User.find(params[:id])
   @ = @user.post_images 
end

def edit
end
  
end
