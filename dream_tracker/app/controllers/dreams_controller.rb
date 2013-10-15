class DreamsController <ApplicationController
	before_action :set_dream, only [:show, :edit, :update, :destroy]

	def show
	end
	def index
	end
	def create
	end
	def new
		@dream = Dream.new
	end
	def update
	end
	def edit
	end
	def destroy
	end
	private
	def set_dream
	end
	def dream_params
	end
end