class CreateAtmosferes < ActiveRecord::Migration
  def change
    create_table :atmosferes, id: false do |t|
      t.primary_key :atmosfere_id
      t.string :name

      t.timestamps
    end
  end
end
