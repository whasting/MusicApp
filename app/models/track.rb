# == Schema Information
#
# Table name: tracks
#
#  id               :integer          not null, primary key
#  track_title      :string           not null
#  album_id         :integer          not null
#  bonus_or_regular :string
#  created_at       :datetime
#  updated_at       :datetime
#  lyrics           :text
#

class Track < ActiveRecord::Base
  before_save :default_values
  validates :track_title, :album_id, presence: true
  validates_inclusion_of :bonus_or_regular, in: ["bonus", "regular"],
                         allow_nil: true
  belongs_to :album,
    dependent: :destroy

  def default_values
    self.bonus_or_regular ||= 'regular'
  end
end
