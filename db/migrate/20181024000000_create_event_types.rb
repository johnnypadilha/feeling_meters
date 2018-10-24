class CreateEventTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :event_types do |t|
      t.string :name, limit: 140, null: false
      t.timestamps
    end
  end
end
