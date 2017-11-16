class InsposController < ApplicationController
before_action :logged_in, only: [:index, :search, :results, :create]
	def search
	end

	def index
		@inspos = Inspo.all
	end

	def results
		@term = params[:search][:term]
		url = "https://api.unsplash.com/search/photos/?page=1&query=#{@term}&client_id=f2ce1b93b0838903de3540c9be11f41ea052ced155c891f2e9c2c617a43e03e7"
		response = HTTParty.get(url)
		parsed_response = JSON.parse(response.body)
		@results = parsed_response["results"].map do |result| 
			{
			image: result["urls"]["regular"] ? result["urls"]["small"] : "http://www.adbazar.pk/frontend/images/default-image.jpg"
			}

	end
end

	def create
		@inspo = Inspo.new(inspo_params)
		if @inspo.save
			redirect_to inspos_path
		else
			redirect_to search_inspos_path
		end
	end

	private

	def inspo_params
		params.require(:inspo).permit(:image)
	end
end
