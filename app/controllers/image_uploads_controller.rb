class ImageUploadsController < ApplicationController
  def new
  end

  def create
    # Make an object in your bucket for your upload
         key ="uploads/#{SecureRandom.uuid}/#{params[:file].original_filename}"
         obj = S3_BUCKET.objects[key]

         # Upload the file
         obj.write(
         file: params[:file],
         acl: :public_read
         )

   # Create an object for the upload
   @upload = Upload.new(
     url: obj.public_url,
     name: obj.key
   )

   # Save the upload
   if @upload.save
      #  redirect_to(:action => 'index')
     redirect_to image_uploads_path, success: 'File successfully uploaded'
   else
     flash.now[:notice] = 'There was an error'
     render :new
   end
  end

  def index
    @uploads = Upload.all

  end
end
