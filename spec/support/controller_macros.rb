module ControllerMacros
  def login_user
    before(:each) do
    	@user = mock_model(User, :update_attributes => true)
    	User.stub!(:find).and_return(@user)
      #@user = mock_model(User, :first_name => 'name', :last_name => 'surname', :email => 'user@differenzia.com',
      #									:role => 'user', :password => 'password', :password_confirmation => 'password')
      @request.env["devise.mapping"] = Devise.mappings[@user]
      sign_in @user
    end
  end
end
