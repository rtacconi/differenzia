require "spec_helper"

describe ImportTablesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/import_tables" }.should route_to(:controller => "import_tables", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/import_tables/new" }.should route_to(:controller => "import_tables", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/import_tables/1" }.should route_to(:controller => "import_tables", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/import_tables/1/edit" }.should route_to(:controller => "import_tables", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/import_tables" }.should route_to(:controller => "import_tables", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/import_tables/1" }.should route_to(:controller => "import_tables", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/import_tables/1" }.should route_to(:controller => "import_tables", :action => "destroy", :id => "1")
    end

  end
end
