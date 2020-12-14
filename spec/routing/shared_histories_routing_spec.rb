RSpec.describe SharedHistoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/shared_histories").to route_to("shared_histories#index")
    end

    it "routes to #new" do
      expect(get: "/shared_histories/new").to route_to("shared_histories#new")
    end

    it "routes to #show" do
      expect(get: "/shared_histories/1").to route_to("shared_histories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/shared_histories/1/edit").to route_to("shared_histories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/shared_histories").to route_to("shared_histories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/shared_histories/1").to route_to("shared_histories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/shared_histories/1").to route_to("shared_histories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/shared_histories/1").to route_to("shared_histories#destroy", id: "1")
    end
  end
end
