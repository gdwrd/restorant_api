class Order < ActiveRecord::Base
  belongs_to :restorant, autosave: true

  validates :restorant_id, presence: true
  validates :datetime, presence: true
  validates :quantity, presence: true
  validates :email, :phone, presence: true, if: Proc.new { |o| o.email.nil? && o.phone.nil? }
end