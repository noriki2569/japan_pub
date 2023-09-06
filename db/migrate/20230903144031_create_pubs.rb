class CreatePubs < ActiveRecord::Migration[6.1]
  def change
    create_table :pubs do |t|

      t.integer :user_id, null: false
      t.string :name, null: false
      t.text :introduction
      t.integer :average_budget, null: false

      t.timestamps
    end
  end
end
