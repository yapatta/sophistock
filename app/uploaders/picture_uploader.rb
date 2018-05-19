class PictureUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick
  
  storage :file
  # storage :fog

  def store_dir
    "images/posts"
  end
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  process resize_to_fill: [500, 400, "Center"]

  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end



  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  def filename
    "#{secure_token(10)}.#{file.extension}" if original_filename.present?
  end

  protected
  def secure_token(length=16)
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.hex(length/2))
  end
end
