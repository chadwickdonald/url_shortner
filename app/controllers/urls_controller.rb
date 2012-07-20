class UrlsController < ApplicationController

	def index
		@url = Url.new
	end

	def create
		@url = Url.new(params[:url])
		@url.shortened = (0...8).map{65.+(rand(25)).chr}.join.downcase

		respond_to do |format|
      if @url.save
        format.html { redirect_to(@url, :notice => 'url was successfully created.') }
        format.xml  { render :xml => @url, :status => :created, :location => @url }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @url.errors, :status => :unprocessable_entity }
      end
    end
	end

	def show
		@url = Url.find(params[:id])

	end

	def match 
		@url = Url.find(params[:shortened])
		#@url = Url.find
		redirect_to @url.original
	end

end







