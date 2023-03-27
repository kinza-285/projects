require 'rails_helper'

RSpec.describe "Projects", type: :request do
  before do
    @project = create(:project)
    @user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:authenticate_user!).and_return(true)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
  end
  describe "GET /index" do
    it "returns projects" do
      get '/projects'
      expect(response).to have_http_status(:ok)
      expect(response.body).to include("/projects/#{@project.id}")
    end
  end
  describe "PUT" do
    it "create project event" do
      expect do
        put "/projects/#{@project.id}", params: { id: @project.id, project: { status: 2} }
      end.to change{ProjectEvent.count}.by(1)
      project_event = ProjectEvent.last
      expect(project_event.user).to eq(@user)
      expect(project_event.project).to eq(@project)
      expect(project_event.event_type).to eq("change status")
      expect(project_event.body).to eq("Change status from normal to active")
    end
  end
end
