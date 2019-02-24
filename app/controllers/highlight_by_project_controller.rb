class HighlightByProjectController < ApplicationController

  def index
    @projects = Project.find(params[:project_id])
    @issues = Issue.all.where('project_id' => @projects.id)
    @highlights = Highlight.all.where('project_id' => @projects.id)
  end
end
