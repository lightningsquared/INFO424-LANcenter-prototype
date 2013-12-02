class AttendeesController < ApplicationController
  def index
    @attendees = Attendee.all

    respond_to do |format|
      format.html
    end
  end

  # GET /attendees/1
  def show
    @attendee = Attendee.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  # GET /attendees/new
  def new
    @attendee = Attendee.new

    respond_to do |format|
      format.html
    end
  end

  # GET /attendees/1/edit
  def edit
    @attendee = Attendee.find(params[:id])
  end

  # POST /attendees
  def create
    @attendee = Attendee.new(params[:attendee])

    respond_to do |format|
      if @attendee.save
        format.html { redirect_to @attendee, notice: 'Attendee was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /attendees/1
  def update
    @attendee = Attendee.find(params[:id])

    respond_to do |format|
      if @attendee.update_attributes(params[:attendee])
        format.html { redirect_to @attendee, notice: 'Attendee was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /attendees/1
  def destroy
    @attendee = Attendee.find(params[:id])
    @attendee.destroy

    respond_to do |format|
      format.html { redirect_to attendees_url }
    end
  end
end
