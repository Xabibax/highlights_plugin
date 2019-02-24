class HighlightController < ApplicationController

  def index
    @issues = Issue.all
    @highlights = Highlight.all
  end
end
