class Order < ActiveRecord::Base
  belongs_to :restorant

  validates :restorant_id, presence: true
  validates :datetime, presence: true
  validates :quantity, presence: true
  validates :name, presence: true, if: "email.nil?"
  validates :email, presence: true, if: "name.nil?"
end