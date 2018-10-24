class CreateSubEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_events do |t|
      t.string :name, limit: 300, null: false
      t.integer :sleep_hours, null: true
      t.date :start_date, null: false
      t.date :end_date, null: true
      t.string :description, limit: 3000, null: true
      t.integer :scale_id, null: false

      t.timestamps
    end
    add_foreign_key :sub_events, :scales, name: 'fk_scales_to_sub_events'

  end
end
