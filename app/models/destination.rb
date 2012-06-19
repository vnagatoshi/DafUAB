class Destination < ActiveRecord::Base
  attr_accessible :department_id, :number_destiny, :observation, :out_date, :route_sheet_id

  belongs_to :department
  belongs_to :route_sheet


end
