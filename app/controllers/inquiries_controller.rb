class InquiriesController < ApplicationController
  def create
    @inquiry = Inquiry.new(params[:inquiry])
    @inquiry.image = File.new(upload_path)
    @inquiry.save

    redirect_to @inquiry
  end

  def show
    @inquiry = Inquiry.find(params[:id])
  end

  def index
    @inquiries = Inquiry.all
  end

  def upload
    File.open(upload_path, 'wb') do |f|
      f.write request.raw_post
    end
    render :text => "ok"
  end

  private

  def upload_path # is used in upload and create
    File.join(Rails.root, 'tmp', 'photo.jpg')
  end
end