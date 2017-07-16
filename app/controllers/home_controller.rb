class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
  	@email = current_user.email
  	@name = current_user.name
  	# byebug
  end
  def question
  	if params["content"] != ""
  		question = Question.new
  		question.content = params["content"]
  		question.User_id = current_user.id 
  		question.save
  		end
  		return redirect_to '/'
   end

   def answer
  	if params["content"] != ""
  		answer = Answer.new
  		answer.content = params["content"]
  		answer.Question_id = params["id_of_question"]
  		answer.User_id = current_user.id 
  		answer.save
	  end
   		return redirect_to '/'
   	end
   end

   def upvote_q
   	if params[:id_of_asker] != current_user.id
   		
   

