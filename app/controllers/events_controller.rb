class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    @event.save
    redirect_to events_path
  end

  def edit
  end

    def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to events_path, notice: 'Event was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  private
  def set_event
      @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:description, :capacity, :date, :requires_id, :location)
  end

end
