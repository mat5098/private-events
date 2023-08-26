class EventsController < ApplicationController
 before_action :authenticate_user!, only: [:new, :create]
  def new
    @event = Event.new
  end
  
  def index
      @events = Event.all
  end
  
  def create
      @event = current_user.events.build(event_params)
      if @event.save
        flash[:success] = "Event successfully created"
        redirect_to root_path
      else
        flash[:error] = "Something went wrong"
        render :new, status: :unprocessable_entity
      end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end
  
  private

  def event_params
    params.require(:event).permit(:title,:description, :location, :date)
  end
       
end
