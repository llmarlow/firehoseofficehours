class QuestionsController < ApplicationController
	def index
		@questions = Question.all
	end

	def show
		@question = Question.find(params[:id])
	end

	def edit
		@question = Question.find(params[:id])
	end

	def update
		@question = Question.find(params[:id])
	  @question.update(question_params)
	  redirect_to @question
	end

	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
		@question.save
		redirect_to @question
	end

	private

	def question_params
		params.require(:question).permit(:question, :info, :link, :start_time, :end_time)
	end
end
