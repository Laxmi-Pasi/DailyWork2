require 'rails_helper'

RSpec.describe "post1s/new", type: :view do
  before(:each) do
    assign(:post1, Post1.new(
      title: "MyString"
    ))
  end

  it "renders new post1 form" do
    render

    assert_select "form[action=?][method=?]", post1s_path, "post" do

      assert_select "input[name=?]", "post1[title]"
    end
  end
end
