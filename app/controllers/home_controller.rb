# -*- coding: utf-8 -*-
class HomeController < ApplicationController
  def index
  end

  def compare
    doc1 = IgoDoc.find params[:igo_form][:docs][0]
    doc2 = IgoDoc.find params[:igo_form][:docs][1]
    igo(doc1.content)
    vec1 = @igo
    igo(doc2.content)
    vec2 = @igo
    pp vec1
    pp vec2
  end

  private

  def cos_sim x, y
  end
end



