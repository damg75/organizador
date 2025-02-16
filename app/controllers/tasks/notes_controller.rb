class Tasks::NotesController < ApplicationController
    before_action :set_task

    def create 
        @note = @task.notes.new(notes_params)
        @note.user = current_user
        @note.save
    end

    private

    def notes_params
        params.require(:note).permit(:body)
    end

    def set_task
        @task = Task.find(params[:task_id])
    end
end