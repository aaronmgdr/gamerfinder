require 'spec_helper'

describe UsersController do
	let :users {User.all}
	describe 'GET #Index' do
		it 'asigns all Users as @users' do
			:users
			get :index
			gamer = User.new
			allow(gamer)

			expect(assigns(:users)).to eq([gamer])
		end

		it 'should show a form' do

		end

	end

end
