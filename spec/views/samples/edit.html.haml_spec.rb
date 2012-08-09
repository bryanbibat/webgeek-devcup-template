require 'spec_helper'

describe "samples/edit" do
  before(:each) do
    @sample = assign(:sample, stub_model(Sample,
      :name => "MyString",
      :content => "MyText",
      :quantity => 1,
      :price => "9.99"
    ))
  end

  it "renders the edit sample form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => samples_path(@sample), :method => "post" do
      assert_select "input#sample_name", :name => "sample[name]"
      assert_select "textarea#sample_content", :name => "sample[content]"
      assert_select "input#sample_quantity", :name => "sample[quantity]"
      assert_select "input#sample_price", :name => "sample[price]"
    end
  end
end
