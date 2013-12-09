# coding: utf-8
class CategoriesController < ApplicationController
#  before_filter :require_login

  def index
    @categories = current_user.categories
  end

  def new
    @category = current_user.categories.build
  end

  def edit
    @category = current_user.categories.find params[:id]
  end

  def create
    @category = current_user.categories.build params[:category]
    if @category.save
      redirect_to user_categories_path, notice: 'Category was successfully created.'
    else
      render :new
    end
  end

  def update
    @category = current_user.categories.find params[:id]
    if @category.update_attributes(params[:category])
      redirect_to user_categories_url(current_user), notice: 'Category was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @category = current_user.categories.find params[:id]
    @category.destroy
    redirect_to user_categories_path
  end
end
