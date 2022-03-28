require "rails_helper"

RSpec.describe Post1sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/post1s").to route_to("post1s#index")
    end

    it "routes to #new" do
      expect(get: "/post1s/new").to route_to("post1s#new")
    end

    it "routes to #show" do
      expect(get: "/post1s/1").to route_to("post1s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/post1s/1/edit").to route_to("post1s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/post1s").to route_to("post1s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/post1s/1").to route_to("post1s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/post1s/1").to route_to("post1s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/post1s/1").to route_to("post1s#destroy", id: "1")
    end
  end
end
