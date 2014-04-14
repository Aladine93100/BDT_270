class InquiriesController < ApplicationController
  require 'base64'
  def capture
      # do something
      render :layout => "webcam"
    end

    def save_image
  image = params[:capture][:image]
  File.open("#{Rails.root}/public/pictures/image_name.png", 'wb') do |f|
    f.write(Base64.decode64(image))
  end

      def new
        inquiry = Inquiry.new
      end

      def create
        @inquiry = Inquiry.new(params[:inquiry])
        if @inquiry.deliver
          render :thank_you
        else
          render :new
        end
      end
    end
  end