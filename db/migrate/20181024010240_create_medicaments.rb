class CreateMedicaments < ActiveRecord::Migration[5.2]
  def change
    create_table :medicaments do |t|
      t.string :name, limit: 140, null: false
      t.integer :amount, null: false
      t.date :start_date, null: false
      t.date :end_date, null: true
      t.string :indications, limit: 300, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
    add_foreign_key :medicaments, :users, name: 'fk_medicaments_to_users'

  end
end
