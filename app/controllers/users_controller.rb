class UsersController < ApplicationController
	
	respond_to :html
	
  def index
  	@users = User.all
  end

  def show
  	respond_with(@user = User.find(params[:id]))
  end

  def new
  	@user = User.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def create
    flash[:notice] = "Operatore creato con successo." if User.create(params[:user])
    redirect_to users_url
  end

  def update
  	@user = User.find(params[:id])
    flash[:notice] = "Operatore modificato con successo." if @user.update_attributes(params[:user])
    respond_with(@user, :location => users_url)
  end

  def destroy
  	@user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
  end

end
