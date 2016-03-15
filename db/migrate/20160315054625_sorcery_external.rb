class SorceryExternal < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.integer :person_id, :null => false
      t.string :provider, :uid, :null => false

      t.timestamps
    end

    add_index :authentications, [:provider, :uid]
  end
end
