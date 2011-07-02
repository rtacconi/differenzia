class UsersController < InheritedResources::Base

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
  
  protected
  def collection
  	@users ||= end_of_association_chain.page(params[:page])
  end

end
