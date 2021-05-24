class CorrectionsController < ApplicationController
  before_action :authenticate_user!

  def create
    @correction = Correction.create(correction_params)
    @corrections = Correction.where(answer_id: @correction.answer_id)
  end

  def update
    @correction = Correction.find(params[:id])
    @correction.update(allowence: true)
    @answers = Answer.where(question_id: @correction.question_id)
  end

  private
  def correction_params
    params.require(:correction).permit(:body, :user_id, :question_id, :answer_id, :allowence)
  end
end