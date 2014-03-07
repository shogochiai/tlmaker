# -*- coding: utf-8 -*-
class HomeController < ApplicationController
  def index
  end

  def compare
    if params[:igo_form]
      params[:igo_form][:docs].delete("")
      params[:igo_form][:docs].each.with_index(1) do |_params, i|
        doc = IgoDoc.find _params
        igo(doc.content)
        if i == 1
          vec1 = @wakachi
        else
          vec2 = @wakachi
        end
      end
    end
  end

  private

  def cos_sim x, y
  end
end
