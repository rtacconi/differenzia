require 'spec_helper'

describe "import_tables/new.html.haml" do
  before(:each) do
    assign(:import_table, stub_model(ImportTable,
      :original_path => "MyString"
    ).as_new_record)
  end

  it "renders new import_table form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => import_tables_path, :method => "post" do
      assert_select "input#import_table_original_path", :name => "import_table[original_path]"
    end
  end
end
