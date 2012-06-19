class RouteSheet < ActiveRecord::Base
  attr_accessible :origin, :out_date, :page_number, :reference, :sender

  has_many :destinations


  validates :origin,:page_number,:sender, presence: true


end
