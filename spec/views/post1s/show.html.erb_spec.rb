require 'rails_helper'

RSpec.describe "post1s/show", type: :view do
  before(:each) do
    @post1 = assign(:post1, Post1.create!(
      title: "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
