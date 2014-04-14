class PicturesController < ApplicationController
	require 'base64'
	def new
	end

	def create
	end
	
    def capture
      # do something
      render :layout => "webcam"
    end

    def save_image
      image = params[:canvas][:image]
      File.open("#{Rails.root}/public/pictures/image_name.png", 'wb') do |f|
        f.write(Base64.decode64(image))
      end
      # Or use paperclip to save image for a model instead!!
    end
end