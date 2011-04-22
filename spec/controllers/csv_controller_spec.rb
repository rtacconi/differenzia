require 'spec_helper'

describe CsvController do

  describe "GET 'import'" do
    it "should be successful" do
      login_user
      get 'import'
      response.should be_success
    end
  end

end
