class CreateRestorants < ActiveRecord::Migration
  def change
    create_table :restorants, id: false do |t|
      t.primary_key :restorant_id
      t.string      :name
      t.string      :address
      t.decimal     :longitude
      t.decimal     :latitude
      t.float       :averagesum
      t.string      :worktime
      t.string      :phone
      t.string      :imageurls, array: true, default: []
      t.text        :description
      t.float       :rating
      t.integer     :atmosfere_ids, array: true, default: []

      t.timestamps
    end
  end
end
