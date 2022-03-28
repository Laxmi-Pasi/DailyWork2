require 'rails_helper'

RSpec.describe "post1s/edit", type: :view do
  before(:each) do
    @post1 = assign(:post1, Post1.create!(
      title: "MyString"
    ))
  end

  it "renders the edit post1 form" do
    render

    assert_select "form[action=?][method=?]", post1_path(@post1), "post" do

      assert_select "input[name=?]", "post1[title]"
    end
  end
end
