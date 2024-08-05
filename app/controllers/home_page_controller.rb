class HomePageController < ApplicationController

	def index
		 render :layout => false
	end

	def improve
		respond_to do |format|
			format.html { render 'home_page/improvements' , :layout => false}
        end
	end

end