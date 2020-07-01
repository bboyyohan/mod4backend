class CreateGuns < ActiveRecord::Migration[6.0]
  def change
    create_table :guns do |t|
      t.string :name
      t.integer :bullet_id
      t.integer :barrel_length

      t.timestamps
    end
  end
end
