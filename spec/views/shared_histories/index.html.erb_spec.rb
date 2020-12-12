require 'rails_helper'

RSpec.describe "shared_histories/index", type: :view do
  before(:each) do
    assign(:shared_histories, [
      SharedHistory.create!(
        shared_user: nil,
        owner_user: nil,
        appointment: nil
      ),
      SharedHistory.create!(
        shared_user: nil,
        owner_user: nil,
        appointment: nil
      )
    ])
  end

  it "renders a list of shared_histories" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
