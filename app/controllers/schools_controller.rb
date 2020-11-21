class SchoolsController < ApplicationController
	
	def index
		@schools = School.where.not(latitude: nil, longitude: nil)
		arr = []
		@schools.geocoded.map do |school|
      		arr.push([school.latitude, school.longitude])
		end
		@markers = arr

	end

	def show
		@school = School.find(params[:id])
	end


end

