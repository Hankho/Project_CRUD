class EventsController < ApplicationController

#before_action :set_event, :only => [:show,:edit,:update,:destroy]    


def index
	@events = Event.all
end
def new
	@event = Event.new

end
def create
    @event = Event.new(params.require(:event).permit(:name,:description))
    @event.save
    redirect_to  :action => :show , :id => @event
end

def show
	@event = Event.find(params[:id])
end

def edit
	@event = Event.find(params[:id])


end

def update
	
		
	@event.update(params_event)
	flash[:notice]="更新成功"
	@event.update(params.require(:event).permit(:name,:descripiton))
end
def destroy
	@event = Event.find(params[:id])
	flash[:notice]="刪除成功"
	@event.destroy
	redirect_to :action => :index

end


def set_event
	@event = Event.find(params [:id])
end

def params_event
	params.require(:event).permit(:name,:descripiton,:capacity)
end



end

