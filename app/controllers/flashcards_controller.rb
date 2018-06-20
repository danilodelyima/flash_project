class FlashcardsController < ApplicationController
  before_action :set_flashcard, only: [:show, :edit, :update, :destroy]

  # GET /flashcards
  # GET /flashcards.json
  def index
    @flashcards = Flashcard.where(topic_id: params['topic_id'])
  end

  # GET /flashcards/new
  def new
    @flashcard = Flashcard.new
  end

  # POST /flashcards
  # POST /flashcards.json
  def create
    @flashcard = Flashcard.new(flashcard_params)

    respond_to do |format|
      if @flashcard.save
        format.html { redirect_to @flashcard, notice: 'Flashcard was successfully created.' }
        format.json { render :show, status: :created, location: @flashcard }
      else
        format.html { render :new }
        format.json { render json: @flashcard.errors, status: :unprocessable_entity }
      end
    end
  end

  def correct
    @flashcard = Flashcard.find(params[:id])
    @flashcard.update(correct: params[:correct])
    p @flashcard
  end

  # DELETE /flashcards/1
  # DELETE /flashcards/1.json
  def destroy
    @flashcard.destroy
    respond_to do |format|
      format.html { redirect_to flashcards_url, notice: 'Flashcard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flashcard
      @flashcard = Flashcard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flashcard_params
      params.require(:flashcard).permit(:question, :answer, :correct, :topic_id, :classroom_id)
    end
end
