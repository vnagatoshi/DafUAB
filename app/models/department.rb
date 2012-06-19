class Department < ActiveRecord::Base
  attr_accessible :description, :fono, :name

  has_many :destinations
end
