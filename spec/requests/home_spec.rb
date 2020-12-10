require 'rails_helper'

describe 'Home', type: :request do
  
  it "Test Home - status 200" do
    get '/' 
    expect(response).to have_http_status(:ok)  # = 200
  end
end

