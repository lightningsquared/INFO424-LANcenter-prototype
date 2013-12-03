class AttendeesController < ApplicationController
  before_filter :get_event

  def index
    @attendees = @event.attendees

    respond_to do |format|
      format.html
    end
  end

  def show
    @attendee = @event.attendees.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @event = Event.find(params[:event_id])
    @attendee = @event.attendees.build

    respond_to do |format|
      format.html
    end
  end

  def edit
    @attendee = @event.attendees.find(params[:id])
  end

  def create
    @attendee = @event.attendees.build(params[:attendee])

    respond_to do |format|
      if @attendee.save
        format.html { redirect_to @event, notice: 'Attendee was successfully checked in.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @attendee = @event.attendees.find(params[:id])

    respond_to do |format|
      if @attendee.update_attributes(params[:attendee])
        format.html { redirect_to @attendee, notice: 'Attendee was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @attendee = @event.attendees.find(params[:id])
    @attendee.destroy

    respond_to do |format|
      format.html { redirect_to @event }
    end
  end

  private

  def get_event
    @event = Event.find(params[:event_id])
  end
end
