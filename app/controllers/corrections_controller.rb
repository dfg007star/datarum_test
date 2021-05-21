class CorrectionsController < ApplicationController
  before_action :authenticate_user!

  def create
    @correction = Correction.create(correction_params)
  end

  def update
    @answer = Answer.find(params[:correction][:answer_id])
    @correction = Correction.find(params[:id])
    @answer.update(body: params[:correction][:body])
    @correction.update(allowence: true)
  end

  private
  def correction_params
    params.require(:correction).permit(:body, :user_id, :question_id, :answer_id, :allowence)
  end
end