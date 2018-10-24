class CreateUserTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_types do |t|
      t.string :name, limit: 140, null: false

      t.timestamps
    end
  end
end
