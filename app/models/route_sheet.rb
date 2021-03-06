class RouteSheet < ActiveRecord::Base
  attr_accessible :origin, :out_date, :page_number, :reference, :sender, :destinations_attributes

  has_many :destinations
  accepts_nested_attributes_for :destinations


  validates :origin,:page_number,:sender, presence: true


end
