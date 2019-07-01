# frozen_string_literal: true

require 'RMagick'

class Resizer
  def self.resize
    files = Dir.glob('./images/*')

    p "ファイル数: #{files.count}"

    files.each do |fileName|
      img = Magick::ImageList.new(fileName)
      # 300×300
      new_img = img.resize_to_fit(300, 300)
      new_img.write('./resized/new_' + fileName.split('/')[1])
    end
  end
end