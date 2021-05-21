class CorrectionsController < ApplicationController
  before_action :authenticate_user!

  def create
    @correction = Correction.create(correction_params)
  end

  private
  def correction_params
    params.require(:correction).permit(:body, :user_id, :question_id, :answer_id, :allowence)
  end
end