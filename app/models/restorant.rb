class Restorant < ActiveRecord::Base
  has_many :orders, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true
  validates :averagesum, presence: true
end