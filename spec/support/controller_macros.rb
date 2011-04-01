module ControllerMacros
  def login_user
    before(:each) do
    	@user = mock_model(User).as_null_object
    	User.stub!(:find).and_return(@user)
      @request.env["devise.mapping"] = Devise.mappings[@user]
      sign_in @user
    end
  end
  
  def login_admin
    before(:each) do
    	@user = mock_model(User, :role => 'admin').as_null_object
    	User.stub!(:find).and_return(@user)
      @request.env["devise.mapping"] = Devise.mappings[@user]
      sign_in @user
    end
  end
end
