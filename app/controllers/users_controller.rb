class UsersController < ApplicationController
	#before_filter :authenticate_user!
	respond_to :html
	
  def index
  	@users = User.all(:order => "created_at DESC")
  end

  def show
  	# respond_with(@user = User.find(params[:id]))
  end

  def new
  	@user = User.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(params[:user])
    flash[:notice] = "Operatore creato con successo." if@user.save
    respond_with(@user, :location => users_url)
  end

  def update
  	@user = User.find(params[:id])
    flash[:notice] = "Operatore modificato con successo." if @user.update_attributes(params[:user])
    respond_with(@user, :location => users_url)
  end

  def destroy
    begin
      @user = User.find(params[:id])
    rescue
      flash[:error] = "L'Operatore non può essere eliminato." 
    else
      flash[:notice] = "Operatore eliminato con successo." if @user.destroy
    end
    redirect_to users_url
  end
  
  def reset_password
    @user = User.find(params[:id])
    if @user.present?
      if @user.update_attributes(:user => { :password => 'password', :password_confirmation => 'password' })
        flash[:notice] = "La password è stata resettata."
      else
        flash[:notice] = "Errore: la password non è stata resettata."
      end
    end
    redirect_to users_url
  end

end
