require 'rails_helper'

RSpec.describe "Comments", type: :request do
  before do
    @user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:authenticate_user!).and_return(true)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
  end
  describe "Post" do
    it "create project event" do
      project = create(:project)
      expect do
        post "/projects/#{project.id}/comments", params: { comment: {body: "Hi" } }
      end.to change{ProjectEvent.count}.by(1)
      project_event = ProjectEvent.last
      expect(project_event.user).to eq(@user)
      expect(project_event.project).to eq(project)
      expect(project_event.event_type).to eq("add comment")
      expect(project_event.body).to eq("Hi")
    end
  end
end
