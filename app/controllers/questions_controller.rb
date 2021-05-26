class QuestionsController < ApplicationController
  before_action :authenticate_user!

  def create
    @question = current_user.questions.create(question_params)
    @questions = Question.includes(:answers)
    respond_to do |format|
      format.js { flash[:notice] = 'Question was successfully created.' }
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end
end
