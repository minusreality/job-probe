class RecruitersController < ApplicationController
  before_filter :authenticate_any!
  layout 'entity'
  
  # GET /recruiters
  # GET /recruiters.xml
  def index
    @recruiters = Recruiter.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @recruiters }
    end
  end

  # GET /recruiters/1
  # GET /recruiters/1.xml
  def show
    @recruiter = Recruiter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @recruiter }
    end
  end

  # GET /recruiters/new
  # GET /recruiters/new.xml
  def new
    @recruiter = Recruiter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @recruiter }
    end
  end

  # GET /recruiters/1/edit
  def edit
    @recruiter = Recruiter.find(params[:id])
  end

  # POST /recruiters
  # POST /recruiters.xml
  def create
    @recruiter = Recruiter.new(params[:recruiter])

    respond_to do |format|
      if @recruiter.save
        format.html { redirect_to recruiters_url, :notice => 'Recruiter was successfully created.' }
        format.xml  { render :xml => @recruiter, :status => :created, :location => @recruiter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @recruiter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /recruiters/1
  # PUT /recruiters/1.xml
  def update
    @recruiter = Recruiter.find(params[:id])

    respond_to do |format|
      if @recruiter.update_attributes(params[:recruiter])
        format.html { redirect_to recruiters_url, :notice => 'Recruiter was successfully updated.' }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @recruiter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /recruiters/1
  # DELETE /recruiters/1.xml
  def destroy
    @recruiter = Recruiter.find(params[:id])
    @recruiter.destroy

    respond_to do |format|
      format.html { redirect_to(recruiters_url) }
      format.xml  { head :ok }
    end
  end
end
