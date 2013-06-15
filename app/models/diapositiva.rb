class Diapositiva < ActiveRecord::Base
  attr_accessible :link, :slide, :titulo

  mount_uploader :slide, SlideUploader
end
