class InquiriesController < ApplicationController
 def upload
  File.open(upload_path, 'w') do |f|
    f.write request.raw_post
  end
  render :text => "ok"
end

private

def upload_path # is used in upload and create
  file_name = session[:session_id].to_s + '.jpg'
  File.join(RAILS_ROOT, 'public', 'uploads', file_name)
end

def create
  @inquiry = Inquiry.new(params[:inquiry])
  @inquiry.image = File.new(upload_path)
  @inquiry.save

  redirect_to @photo
end

def show
  @inquiry = Inquiry.find(params[:id])
end

def index
  @inquiries = Inquiry.all
end
end