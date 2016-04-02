class Order < ActiveRecord::Base
  belongs_to :restorant, autosave: true

  validates :restorant_id, presence: true
  validates :datetime, presence: true
  validates :quantity, presence: true
  validates :name, :phone, presence: true, if: Proc.new { |o| o.name.nil? || o.phone.nil? }
end