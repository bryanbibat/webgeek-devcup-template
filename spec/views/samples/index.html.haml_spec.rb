require 'spec_helper'

describe "samples/index" do
  before(:each) do
    assign(:samples, [
      stub_model(Sample,
        :name => "Name",
        :content => "MyText",
        :quantity => 1,
        :price => "9.99"
      ),
      stub_model(Sample,
        :name => "Name",
        :content => "MyText",
        :quantity => 1,
        :price => "9.99"
      )
    ])
  end

  it "renders a list of samples" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
