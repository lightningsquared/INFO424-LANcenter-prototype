class EventsController < ApplicationController
  # GET /events
  def index
    @events = Event.all

    respond_to do |format|
      format.html
    end
  end

  # GET /events/1
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  # GET /events/new
  def new
    @event = Event.new
    @event.build_address

    respond_to do |format|
      format.html
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /events/1
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /events/1
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
    end
  end
end
