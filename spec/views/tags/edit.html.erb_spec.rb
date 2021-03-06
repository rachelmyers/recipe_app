require 'spec_helper'

describe "tags/edit.html.erb" do
  before(:each) do
    @tag = assign(:tag, stub_model(Tag,
      :value => "MyString"
    ))
  end

  it "renders the edit tag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tags_path(@tag), :method => "post" do
      assert_select "input#tag_value", :name => "tag[value]"
    end
  end
end
