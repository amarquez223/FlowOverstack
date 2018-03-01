class QcommentsController < ApplicationController

	def create

		question = Question.find(params[:question_id])
		question.qcomments.create(qcomments_params)

		redirect_to question_path(question.id)

	end

	private
		def qcomments_params
			params.require(:qcomment).permit(:qcomment).merge(user: current_user)
		end

end
