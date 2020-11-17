class SchoolsController < ApplicationController
	
	def index
		@schools = School.where.not(latitude: nil, longitude: nil)
		arr = []
		@markers = @schools.geocoded.map do |school|
      	arr.push([school.latitude, school.longitude])
		end
	end

	def show
		@school = School.find(params[:id])
	end


end

