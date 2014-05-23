class Uploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  process :resize_to_fit => [200,200]

  storage :file

  def store_dir
    'image'
  end
end
