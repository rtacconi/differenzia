require 'spec_helper'
require 'capybara'

describe "import_tables/show.html.haml" do
  pending 'It is missing the ID: No route matches {:action=>"show", :controller=>"import_tables"}'
  before(:each) do
    @import_table = assign(:import_table, stub_model(ImportTable,
      :original_path => "Original Path"
    ))
  end


  it "renders attributes in <p>" do
    pending "it nees a proper request"
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Original Path/)
  end
end