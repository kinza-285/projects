class ProjectEventsController < ApplicationController
  # GET /project_events
  def index
    p "111111111111111"
    p params
    @project = Project.find(params[:project_id])
    @project_events = @project.project_events
  end

end
