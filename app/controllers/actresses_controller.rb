class ActressesController < ApplicationController
  # GET /actresses
  # GET /actresses.json
  def index
    @actresses = Actress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @actresses }
    end
  end


  # GET /actresses/1
  # GET /actresses/1.json
  def show
    @actress = Actress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @actress }
    end
  end


  # GET /actresses/new
  # GET /actresses/new.json
  def new
    @actress = Actress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @actress }
    end
  end

  # GET /actresses/1/edit
  def edit
    @actress = Actress.find(params[:id])
  end

  # POST /actresses
  # POST /actresses.json
  def create

    @actress = Actress.new( params[:actress] ) 
    @actress.photo1 = @actress.photo1.read
    respond_to do |format|
      if @actress.save
        format.html { redirect_to @actress, :notice => 'Actress was successfully created.' }
          format.json { render :json => @actress, :status => :created, :location => @actress }
      else
        format.html { render :action => "new" }
        format.json { render :json => @actress.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /actresses/1
  # PUT /actresses/1.json
  def update
    @actress = Actress.find(params[:id])

    respond_to do |format|
      if @actress.update_attributes(params[:actress])
        format.html { redirect_to @actress, :notice => 'Actress was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @actress.errors, :status => :unprocessable_entity }
      end
    end
  end


  # DELETE /actresses/1
  # DELETE /actresses/1.json
  def destroy
    @actress = Actress.find(params[:id])
    @actress.destroy

    respond_to do |format|
      format.html { redirect_to actresses_url }
      format.json { head :no_content }
    end
  end
end
