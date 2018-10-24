class CreateScales < ActiveRecord::Migration[5.2]
  def change
    create_table :scales do |t|
      t.string :name, limit: 140, null: false
      t.integer :value, null: false

      t.timestamps
    end
  end
end
