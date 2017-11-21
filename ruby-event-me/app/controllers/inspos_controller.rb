class InsposController < ApplicationController
	before_action :require_user
	before_action :logged_in, only: [:index, :search, :results, :create]
	
	def search
	end

	def index
		@inspos = Inspo.all
	end

	def results
		
		@term = params[:search][:term]
		url = "https://api.unsplash.com/search/photos/?page=10&query=#{@term}&client_id=ENV['UNSPLASH_API']"
		response = HTTParty.get(url)
		parsed_response = JSON.parse(response.body)
		@results = parsed_response["results"].map do |result| 
			{
			image: result["urls"]["regular"] ? result["urls"]["small"] : "http://www.adbazar.pk/frontend/images/default-image.jpg"
			}

	end
end

	def new
		@friends = Friend.all
	end


	def create
		friend_id = params[:friend_id]
		puts friend_id
		@inspo = Inspo.new(inspo_params)
	
		unless @inspo.save
			flash[:inspo] = @inspo.errors.messages
    end
    redirect_back fallback_location: @friend
  end

	private

	def inspo_params
		params.require(:inspo).permit(:image, :friend_id)
	end
end
