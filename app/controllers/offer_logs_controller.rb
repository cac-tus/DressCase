class OfferLogsController < ApplicationController
  # GET /offer_logs
  # GET /offer_logs.json
  def index
    @offer_logs = OfferLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @offer_logs }
    end
  end

  # GET /offer_logs/1
  # GET /offer_logs/1.json
  def show
    @offer_log = OfferLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @offer_log }
    end
  end

  # GET /offer_logs/new
  # GET /offer_logs/new.json
  def new
    @offer_log = OfferLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @offer_log }
    end
  end

  # GET /offer_logs/1/edit
  def edit
    @offer_log = OfferLog.find(params[:id])
  end

  # POST /offer_logs
  # POST /offer_logs.json
  def create
    @offer_log = OfferLog.new(params[:offer_log])

    respond_to do |format|
      if @offer_log.save
        format.html { redirect_to @offer_log, :notice => 'Offer log was successfully created.' }
        format.json { render :json => @offer_log, :status => :created, :location => @offer_log }
      else
        format.html { render :action => "new" }
        format.json { render :json => @offer_log.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /offer_logs/1
  # PUT /offer_logs/1.json
  def update
    @offer_log = OfferLog.find(params[:id])

    respond_to do |format|
      if @offer_log.update_attributes(params[:offer_log])
        format.html { redirect_to @offer_log, :notice => 'Offer log was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @offer_log.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /offer_logs/1
  # DELETE /offer_logs/1.json
  def destroy
    @offer_log = OfferLog.find(params[:id])
    @offer_log.destroy

    respond_to do |format|
      format.html { redirect_to offer_logs_url }
      format.json { head :no_content }
    end
  end
end
