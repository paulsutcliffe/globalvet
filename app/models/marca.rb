class Marca < ActiveRecord::Base
  attr_accessible :link, :logo

  mount_uploader :logo, ImagenUploader
end
