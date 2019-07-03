# frozen_string_literal: true

require 'RMagick'

class Resizer
  def self.resize(width: 300, height: 300)
    files = Dir.glob('./images/*').sort

    p "ファイル数: #{files.count}"

    files.each do |fileName|
      p fileName
      img = Magick::ImageList.new(fileName)
      # 300×300
      new_img = img.resize_to_fit(width, height)
      new_img.write("./resized/#{fileName.split('/').last}")
    end
  end
end