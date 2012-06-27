#class RouteSheetsController < InheritedResources::Base

class RouteSheetsController < ApplicationController
  # GET /route_sheets
  # GET /route_sheets.json
  def index
    @route_sheets = RouteSheet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @route_sheets }
    end
  end

  # GET /route_sheets/1
  # GET /route_sheets/1.json
  def show
    @route_sheet = RouteSheet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @route_sheet }
    end
  end

  # GET /route_sheets/new
  # GET /route_sheets/new.json
  def new
    @route_sheet = RouteSheet.new
    @route_sheet.out_date = Time.now
    2.times{@route_sheet.destinations.build}

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @route_sheet }
    end
  end

  # GET /route_sheets/1/edit
  def edit
    @route_sheet = RouteSheet.find(params[:id])
  end

  # POST /route_sheets
  # POST /route_sheets.json
  def create
    @route_sheet = RouteSheet.new(params[:route_sheet])

    respond_to do |format|
      if @route_sheet.save
        format.html { redirect_to @route_sheet, notice: 'route_sheet was successfully created.' }
        format.json { render json: @route_sheet, status: :created, location: @route_sheet }
      else
        format.html { render action: "new" }
        format.json { render json: @route_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /route_sheets/1
  # PUT /route_sheets/1.json
  def update
    @route_sheet = RouteSheet.find(params[:id])

    respond_to do |format|
      if @route_sheet.update_attributes(params[:route_sheet])
        format.html { redirect_to @route_sheet, notice: 'route_sheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @route_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /route_sheets/1
  # DELETE /route_sheets/1.json
  def destroy
    @route_sheet = RouteSheet.find(params[:id])
    @route_sheet.destroy

    respond_to do |format|
      format.html { redirect_to route_sheets_url }
      format.json { head :no_content }
    end
  end
end
