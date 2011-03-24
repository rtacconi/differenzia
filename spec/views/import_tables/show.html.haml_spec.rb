require 'spec_helper'

describe "import_tables/show.html.haml" do
  before(:each) do
    @import_table = assign(:import_table, stub_model(ImportTable,
      :original_path => "Original Path"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Original Path/)
  end
end
