class CreateBulletTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :bullet_types do |t|
      t.float :calibre
      t.integer :muzzle_velocity
      t.integer :weight

      # t.timestamps
    end
  end
end
