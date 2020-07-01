class CreateUserOwnedGuns < ActiveRecord::Migration[6.0]
  def change
    create_table :user_owned_guns do |t|
      t.integer: user_id
      t.integer: gun_id
      t.timestamps
    end
  end
end
