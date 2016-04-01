class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer   :restorant_id
      t.integer   :quantity
      t.string    :name
      t.string    :phone
      t.string    :email
      t.date      :datetime

      t.timestamps
    end
  end
end
