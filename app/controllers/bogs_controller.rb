class BogsController < ApplicationController


    def index
        @bogs = Bog.all
        render :index
    end

    def test
    	render :test
    end

	def new
	    render :new
	end

	def create
        bog = params.require(:bog).permit(:name, :design, :description)
        bog = Bog.create(bog)
        redirect_to "/bogs/#{bog.id}"
    end

     def show
        bog_id = params[:id]
        @bog = Bog.find(bog_id)
        render :show
    end

    def edit
        bog_id = params[:id]
        @bog = Bog.find(bog_id)
        render :edit
    end

    def update
        bog_id = params[:id]
        @bog = Bog.find(bog_id)

        # get updated data
        updated_attributes = params.require(:plane).permit(:name, :design, :description)
        # update the bog
        bog.update_attributes(updated_attributes)

        #redirect to show
        redirect_to "/bogs/#{bog_id}"
    end

    def delete
        bog_id = params[:id]
        @bog = Bog.delete(bog_id)
        redirect_to "/bogs"
    end


end