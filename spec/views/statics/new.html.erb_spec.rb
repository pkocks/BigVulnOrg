require 'spec_helper'

describe "statics/new" do
  before(:each) do
    assign(:static, stub_model(Static).as_new_record)
  end

  it "renders new static form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", statics_path, "post" do
    end
  end
end
