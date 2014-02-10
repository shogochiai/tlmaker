class IgoForm < ActiveRecord::Base
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :num1, :num2

  def initialize(attributes = {})
    self.attributes = attributes
  end

  def attributes=(attributes = {})
    if attributes
      attributes.each do |name, value|
        send "#{name}=", value
      end
    end
  end

  def attributes
    Hash[instance_variable_names.map{|v| [v[1..-1], instance_variable_get(v)]}]
  end
end
