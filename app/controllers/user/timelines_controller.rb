class User::TimelinesController < ApplicationController
  def new
    @timeline = Timeline.new
  end

  def edit
    @timeline = Timeline.find(params[:id])
  end

  def create
    @timeline = Timeline.new(params[:timeline])
  end

  def update
    @timeline = Timeline.find(params[:id])
  end

  def destroy
    @timeline = Timeline.find(params[:id])
    @timeline.destroy
    redirect_to timelines_user_url(current_user), :notice => "Deleted!"
  end
end
