require "rails_helper"

RSpec.describe BudgetsGroupsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/budgets_groups").to route_to("budgets_groups#index")
    end

    it "routes to #new" do
      expect(get: "/budgets_groups/new").to route_to("budgets_groups#new")
    end

    it "routes to #show" do
      expect(get: "/budgets_groups/1").to route_to("budgets_groups#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/budgets_groups/1/edit").to route_to("budgets_groups#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/budgets_groups").to route_to("budgets_groups#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/budgets_groups/1").to route_to("budgets_groups#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/budgets_groups/1").to route_to("budgets_groups#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/budgets_groups/1").to route_to("budgets_groups#destroy", id: "1")
    end
  end
end
