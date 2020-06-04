class Api::V1::NotesController < ApplicationController
     before_action :find_note, only: [:show, :update, :destroy]
    before_action :authenticate_user, only: [:create, :update, :destroy]

  def index
    @notes = Note.all
    render :json => @notes, action: index, status: @ok  
  end

  def show
   render :json => @note, action: show, status: @ok
  end
  
  def create 
    if curr_user
      @note = Note.create!(note_params)
      if @note.save 
        render :json => @note, status: @ok   
      else        
        render :json => { errors: @note.errors.full_messages }, status:  @unprocessible_entity
      end
    else     
      render :json => {}, status: 401
    end
  end

  def update
    if curr_user 
      @note.update(note_params) 
      if @note.save 
        render :json => @note, status: @ok 
      else       
        render :json => { errors: @note.errors.full_messages }, status:  @unprocessible_entity
      end
    else      
      render :json => {}, status: 401
    end
  end

  def destroy
    if curr_user
      note_id = @note.id
      @note.delete  
      render :json => { noteId: note_id }
    else      
      render :json => {}, status: 401
    end  
  end

  private 

  def find_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.permit(:entry, :is_public, :service_id, :user_id, :current_user) 
  end
end
