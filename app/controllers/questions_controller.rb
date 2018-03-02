class QuestionsController < ApplicationController

	def index
		if params[:search]
			@questions = Question.where("title like ? OR description like ?", "%#{params[:search]}%", "%#{params[:search]}%").order(created_at: :desc)
		else	
			@questions = Question.all.order(created_at: :desc)
		end
	end

	def show 
		@question = Question.find(params[:id])
	end

	def new
		if user_signed_in?
			@question = Question.new
		else
			redirect_to new_user_session_path, notice: "Debe estar registrado para poder incluir una pregunta"
		end
	end

	def create
		@question = Question.new(question_params)
		if @question.save
			redirect_to questions_path, notice: "La pregunta fue adicionada correctamente"
		else
			render :new
		end
	end

	protected
	def question_params
		params.require(:question).permit(:title,:description,:user_id)
	end

end
