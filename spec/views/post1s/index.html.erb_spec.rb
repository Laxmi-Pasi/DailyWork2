require 'rails_helper'

RSpec.describe "post1s/index", type: :view do
  before(:each) do
    assign(:post1s, [
      Post1.create!(
        title: "Title"
      ),
      Post1.create!(
        title: "Title"
      )
    ])
  end

  it "renders a list of post1s" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
  end
end
