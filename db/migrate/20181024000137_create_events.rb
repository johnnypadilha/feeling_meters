class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, limit: 140, null: false
      t.integer :weight, null: false
      t.integer :event_type_id, null: false

      t.timestamps
    end
    add_foreign_key :events, :event_types, name: 'fk_event_types_to_events'
  end
end
