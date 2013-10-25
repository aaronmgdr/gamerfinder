class UsersController < ApplicationController
	# def index
	# 	@users = User.search(params[:search])
	# end

	# def get_system(sys)
	# 	@matches = User.where('system=?', sys)
 #  end
  def self.compare
    a= User.first.responses.pluck(:answer_id)
    z= User.last.responses.pluck(:answer_id)

    puts a
    puts z
  end


  def self.answer_compare(id)
    stuff = []
    users = User.all
    users.each do |userX|
      answers1 = User.find(id).responses.pluck(:answer_id)
      answers2 = userX.responses.pluck(:answer_id)

      similarity = answers1.length.to_f / answers2.length.to_f

      stuff.push(similarity)
    end
    puts stuff
  end
end
