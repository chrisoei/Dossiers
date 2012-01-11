require 'spec_helper'

describe "organizations/index" do
  before(:each) do
    assign(:organizations, [
      stub_model(Organization,
        :name => "Name",
        :id => 1,
        :parent_id => 2,
        :notes => "MyText"
      ),
      stub_model(Organization,
        :name => "Name",
        :parent_id => 2,
        :id => 1,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of organizations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2  
  end
end
