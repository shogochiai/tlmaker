class TimelinesController < ApplicationController
  def show
    @timeline = Timeline.find(params[:id])
  end

  def index
    @timelines = Timeline.where(user_id: params[:user_id])
  end

  def new
    @timeline = current_user.timelines.build
  end

  def edit
    @timeline = current_user.timelines.find(params[:id])
  end

  def create
    category = Category.find params[:timeline].delete(:category_id)
    @timeline = current_user.timelines.new(params[:timeline])
    @timeline.category = category
    if @timeline.save
      redirect_to @timeline, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def update
    category = Category.find params[:timeline].delete(:category_id)
    @timeline = current_user.timelines.find(params[:id])
    @timeline.category = category
    if @timeline.update_attributes params[:article]
      redirect_to @timeline, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @timeline = current_user.timelines.find(params[:id])
    @timeline.destroy
    redirect_to timelines_user_path(current_user), :notice => "Deleted!"
  end
end
