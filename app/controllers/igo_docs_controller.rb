# -*- coding: utf-8 -*-
class IgoDocsController < ApplicationController
  def index
    @igo_docs = IgoDoc.all
  end

  def show
    @igo_doc = IgoDoc.find params[:id]
    igo @igo_doc.content
  end

  def new
    @igo_doc = IgoDoc.new
  end

  def create
    params[:igo_doc][:content].gsub!(/(\r\n|\r|\n)/, "")
    @igo_doc = IgoDoc.create params[:igo_doc]
    if @igo_doc
      redirect_to @igo_doc, notice: 'ok'
    else
      flash.now[:alert] = '失敗'
      render :new
    end
  end
end
