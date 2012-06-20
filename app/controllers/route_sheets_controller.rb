class RouteSheetsController < InheritedResources::Base
    def new
      @route_sheet = RouteSheet.new
      @route_sheet.out_date = Time.now
      @route_sheet.destinations.build
      new!
    end
end
