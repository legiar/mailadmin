class MailboxesController < ApplicationController
  # GET /mailboxes
  # GET /mailboxes.xml
  def index
    @mailboxes = Mailbox.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mailboxes }
    end
  end

  # GET /mailboxes/1
  # GET /mailboxes/1.xml
  def show
    @mailbox = Mailbox.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mailbox }
    end
  end

  # GET /mailboxes/new
  # GET /mailboxes/new.xml
  def new
    @mailbox = Mailbox.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mailbox }
    end
  end

  # GET /mailboxes/1/edit
  def edit
    @mailbox = Mailbox.find(params[:id])
  end

  # POST /mailboxes
  # POST /mailboxes.xml
  def create
    @mailbox = Mailbox.new(params[:mailbox])

    respond_to do |format|
      if @mailbox.save
        format.html { redirect_to(@mailbox, :notice => 'Mailbox was successfully created.') }
        format.xml  { render :xml => @mailbox, :status => :created, :location => @mailbox }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mailbox.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mailboxes/1
  # PUT /mailboxes/1.xml
  def update
    @mailbox = Mailbox.find(params[:id])

    respond_to do |format|
      if @mailbox.update_attributes(params[:mailbox])
        format.html { redirect_to(@mailbox, :notice => 'Mailbox was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mailbox.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mailboxes/1
  # DELETE /mailboxes/1.xml
  def destroy
    @mailbox = Mailbox.find(params[:id])
    @mailbox.destroy

    respond_to do |format|
      format.html { redirect_to(mailboxes_url) }
      format.xml  { head :ok }
    end
  end
end
