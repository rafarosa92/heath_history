require 'rails_helper'

RSpec.describe "shared_histories/show", type: :view do
  before(:each) do
    @shared_history = assign(:shared_history, SharedHistory.create!(
      shared_user: nil,
      owner_user: nil,
      appointment: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
