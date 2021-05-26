class AnswersController < ApplicationController
  before_action :authenticate_user!

  def create
    @answer = Answer.create(answer_params)
    respond_to do |format|
      format.js { flash[:notice] = 'Answer was successfully created.' }
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:body, :user_id, :question_id)
  end
end