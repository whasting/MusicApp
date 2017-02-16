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
  before_save :default_values
  validates :band_id, :album_name, presence: true
  validates_inclusion_of :live_or_studio ,
                     in: ["live", "studio"], allow_nil: true
  has_many :tracks
  belongs_to :band
    dependent: :destroy

  def default_values
    self.live_or_studio ||= 'studio'
  end
end
