class DreamsController <ApplicationController
	before_action :set_dream, only: [:show, :edit, :update, :destroy]

	def show
	end

	def index
		@dreams = Dream.all
	end

	def create
		@dream = Dream.new(dream_params)
		if @dream.save
			redirect_to @dream
		else
			render action: 'new'
		end
	end

	def new
		@dream = Dream.new
	end

	def update
		if @dream.update(dream_params)
			redirect_to @dream
		else
			render action: 'edit'
		end
	end
	def edit
	end

	def destroy
		@dream.destroy
		redirect_to dream_url
	end
	private
	def set_dream
		@dream = Dream.find(params[:id])
	end
	def dream_params
		params.require(:dream).permit(:subject, :good_dream, :recurring_dream, :description, :emotions, :vividness, :image_url)
	end
end