class UsersController < ApplicationController
	
	respond_to :html
	
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(params[:user])
    flash[:notice] = "Operatore creato con successo" if@user.save
    respond_with(@user)
  end

  def update
  	@user = User.find(params[:id])
    flash[:notice] = "Operatore modificato con successo" if @user.update_attributes(params[:user])
    respond_with(@user)
  end

  def destroy
  	@user = User.find(params[:id])
    @user.destroy
    #respond_with(@user)
  end

end
