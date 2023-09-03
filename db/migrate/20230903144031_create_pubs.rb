class CreatePubs < ActiveRecord::Migration[6.1]
  def change
    create_table :pubs do |t|

      t.timestamps
    end
  end
end
