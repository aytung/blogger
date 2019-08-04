class TagsController < ApplicationController
	def index 
		@tags = Tag.all
	end
	def destroy
		Tag.find(params[:id]).destroy

		flash.notice = "Tag Destroyed!"
		redirect_to tags_path 
	end

	def show 
		@tag = Tag.find(params[:id])
	end
end
