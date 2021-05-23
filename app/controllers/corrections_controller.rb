class CorrectionsController < ApplicationController
  before_action :authenticate_user!

  def create
    @correction = Correction.create(correction_params)
    @answer = Answer.find(@correction.answer_id)
    @questions = Question.includes(:answers).order("created_at DESC")
  end

  def update
    @correction = Correction.find(params[:id])
    @correction.update(allowence: true)
    @questions = Question.includes(:answers).order("created_at DESC")
  end

  private
  def correction_params
    params.require(:correction).permit(:body, :user_id, :question_id, :answer_id, :allowence)
  end
end