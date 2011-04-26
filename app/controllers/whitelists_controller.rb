class WhitelistsController < ApplicationController
  # GET /whitelists
  # GET /whitelists.xml
  def index
    @whitelists = Whitelist.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @whitelists }
    end
  end

  # GET /whitelists/1
  # GET /whitelists/1.xml
  def show
    @whitelist = Whitelist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @whitelist }
    end
  end

  # GET /whitelists/new
  # GET /whitelists/new.xml
  def new
    @whitelist = Whitelist.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @whitelist }
    end
  end

  # GET /whitelists/1/edit
  def edit
    @whitelist = Whitelist.find(params[:id])
  end

  # POST /whitelists
  # POST /whitelists.xml
  def create
    @whitelist = Whitelist.new(params[:whitelist])

    respond_to do |format|
      if @whitelist.save
        format.html { redirect_to(@whitelist, :notice => 'Whitelist was successfully created.') }
        format.xml  { render :xml => @whitelist, :status => :created, :location => @whitelist }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @whitelist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /whitelists/1
  # PUT /whitelists/1.xml
  def update
    @whitelist = Whitelist.find(params[:id])

    respond_to do |format|
      if @whitelist.update_attributes(params[:whitelist])
        format.html { redirect_to(@whitelist, :notice => 'Whitelist was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @whitelist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /whitelists/1
  # DELETE /whitelists/1.xml
  def destroy
    @whitelist = Whitelist.find(params[:id])
    @whitelist.destroy

    respond_to do |format|
      format.html { redirect_to(whitelists_url) }
      format.xml  { head :ok }
    end
  end
end
