require 'spec_helper'

describe "import_tables/index.html.haml" do
  before(:each) do
    assign(:import_tables, [
      stub_model(ImportTable,
        :original_path => "Original Path"
      ),
      stub_model(ImportTable,
        :original_path => "Original Path"
      )
    ])
  end

  it "renders a list of import_tables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Original Path".to_s, :count => 2
  end
end
