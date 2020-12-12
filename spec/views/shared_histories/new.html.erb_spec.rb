require 'rails_helper'

RSpec.describe "shared_histories/new", type: :view do
  before(:each) do
    assign(:shared_history, SharedHistory.new(
      shared_user: nil,
      owner_user: nil,
      appointment: nil
    ))
  end

  it "renders new shared_history form" do
    render

    assert_select "form[action=?][method=?]", shared_histories_path, "post" do

      assert_select "input[name=?]", "shared_history[shared_user_id]"

      assert_select "input[name=?]", "shared_history[owner_user_id]"

      assert_select "input[name=?]", "shared_history[appointment_id]"
    end
  end
end
