# encoding: utf-8

class VideoUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "#{Rails.root}{}uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

   def extension_white_list
     %w(mp4)
   end
end
