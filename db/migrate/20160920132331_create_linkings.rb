class CreateLinkings < ActiveRecord::Migration[5.0]
  def change
    create_table :linkings do |t|
      t.integer :link_id, :person_id

      t.timestamps
    end
  end
end
