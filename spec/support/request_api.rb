module RequestAPI
  def body_json(sybolize_keys: false)
    json = JSON.parse(response.body)
  rescue
    return {}
  end

 
  RSpec.configure do |config|
    config.include RequestAPI, type: :request
  end

end