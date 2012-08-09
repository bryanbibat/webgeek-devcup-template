require 'spec_helper'

describe "samples/show" do
  before(:each) do
    @sample = assign(:sample, stub_model(Sample,
      :name => "Name",
      :content => "MyText",
      :quantity => 1,
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/9.99/)
  end
end
