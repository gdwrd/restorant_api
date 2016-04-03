class Restorant < ActiveRecord::Base
  has_many :orders, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true
  validates :averagesum, presence: true

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  scope :nearby, -> (data) { all.sort_by {|x| x.distance_to(data.map(&:to_f))}.take(7) }

  scope :near_with_atmosfere, -> (data) do
    where("atmosfere_ids && ?", data.last).sort_by {|x| x.distance_to(data.take(2).map(&:to_f)) }.take(7)
  end
end