class AcommentsController < ApplicationController

	def create

			answer = Answer.find(params[:answer_id])
			answer.acomments.create(acomments_params)

			redirect_to question_path(answer.question_id)

		end

		private
			def acomments_params
				params.require(:acomment).permit(:acomment)
			end

end
