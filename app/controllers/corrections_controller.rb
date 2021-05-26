class CorrectionsController < ApplicationController
  before_action :set_correction, only: %i[update destroy]
  before_action :authenticate_user!

  def create
    @correction = Correction.create(correction_params)
    @corrections = Correction.where(answer_id: @correction.answer_id)
    respond_to do |format|
      format.js { flash[:notice] = 'Correction was successfully created.' }
    end
  end

  def update
    @correction.update(allowence: true)
    @answers = Answer.where(question_id: @correction.question_id)
    respond_to do |format|
      format.js { flash[:notice] = 'Correction was successfully updated.' }
    end
  end

  def destroy
    @corrections = Correction.where(answer_id: @correction.answer_id)
    @correction.destroy
    respond_to do |format|
      format.js { flash[:alert] = 'Correction was successfully destroyed.' }
    end
  end

  private

  def set_correction
    @correction = Correction.find(params[:id])
  end

  def correction_params
    params.require(:correction).permit(:body, :user_id, :question_id, :answer_id, :allowence)
  end
end