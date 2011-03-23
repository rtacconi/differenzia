module ControllerMacros
  def login_user
    before(:each) do
    	@user = mock_model(User, :update_attributes => true)
    	User.stub!(:find).and_return(@user)
      @request.env["devise.mapping"] = Devise.mappings[@user]
      sign_in @user
    end
  end
end
