class ChecklistsController < ApplicationController
    def index
        @ev = Checklist.all
        @p = Checklist.new
    end
    
    def create
        # @e = Checklist.new
        # @e.title = params[:input_title]
        # @e.date = params[:input_date]
        # @e.save
        @e = Checklist.create(title: params[:checklist][:title], date: params[:checklist][:date])
        redirect_to '/checklists'
    end
    
    def show
        @e = Checklist.find(params[:id])
        @c = Todo.where(checklist_id: params[:id])
    end
    
    def destroy
        @e = Checklist.find(params[:id])
        @e.destroy
        redirect_to '/checklists'
    end
    
end
