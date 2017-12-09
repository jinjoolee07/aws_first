class TodosController < ApplicationController
    def create
        @l = Todo.new
        @l.checklist_id = params[:id]
        @l.answer = params[:answer]
        @l.save
        redirect_to "/checklists/#{params[:id]}"
    end
    
    def destroy
        @l = Todo.find(params[:id])
        @l.destroy
        redirect_to :back
    end
end
