class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(article_params)

    @event.save
    redirect_to events_path
  end

  private
  def article_params
    params.require(:event).permit(:description, :capacity, :date, :requires_id, :location)
  end

end
