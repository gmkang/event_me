class FriendsController < ApplicationController
	before_action :require_user
	before_action :logged_in, only: [:index, :show, :new, :update, :edit]
	before_action :set_friend, only: [:show, :edit, :update, :destroy]

	def index
		@friends = Friend.all
	end

	def show
		@inspos = Inspo.where(friend_id: params[:id])
	end

	def new
		@friend = Friend.new
	end

	def create
		@friend = Friend.new(friend_params)

		if @friend.valid?
			@friend.save
			redirect_to @friend
		else
			redirect_back fallback_location: new_friend_path
		end
	end

	def edit
	end

	def update
		if @friend.update(friend_params)
			redirect_to @friend
		else
			redirect_back fallback_location: edit_friend_path(@friend)
		end
	end

	def destroy
		 @friend.destroy
			redirect_to friends_path
	end


	private


	def friend_params 
		params.require(:friend).permit(:name, :dob, :notes)
	end

	def set_friend
		@friend = Friend.find(params[:id])
	end
end













