require 'rails_helper'

RSpec.describe "treatments/index", type: :view do
  before(:each) do
    assign(:treatments, [
      Treatment.create!(
        appointment: nil,
        user: nil,
        title: "Title",
        description: "MyText",
        place: "Place",
        kind: 2
      ),
      Treatment.create!(
        appointment: nil,
        user: nil,
        title: "Title",
        description: "MyText",
        place: "Place",
        kind: 2
      )
    ])
  end

  it "renders a list of treatments" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Place".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
