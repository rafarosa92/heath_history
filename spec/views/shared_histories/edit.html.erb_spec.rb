require 'rails_helper'

RSpec.describe "shared_histories/edit", type: :view do
  before(:each) do
    @shared_history = assign(:shared_history, SharedHistory.create!(
      shared_user: nil,
      owner_user: nil,
      appointment: nil
    ))
  end

  it "renders the edit shared_history form" do
    render

    assert_select "form[action=?][method=?]", shared_history_path(@shared_history), "post" do

      assert_select "input[name=?]", "shared_history[shared_user_id]"

      assert_select "input[name=?]", "shared_history[owner_user_id]"

      assert_select "input[name=?]", "shared_history[appointment_id]"
    end
  end
end
