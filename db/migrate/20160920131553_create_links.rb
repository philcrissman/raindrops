class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :title
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
