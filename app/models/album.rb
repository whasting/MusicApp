# == Schema Information
#
# Table name: albums
#
#  id             :integer          not null, primary key
#  band_id        :integer          not null
#  live_or_studio :string
#  album_name     :string           not null
#  created_at     :datetime
#  updated_at     :datetime
#

class Album < ActiveRecord::Base
end
