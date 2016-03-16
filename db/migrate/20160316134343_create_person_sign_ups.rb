class CreatePersonSignUps < ActiveRecord::Migration[5.0]
  def change
    create_table :person_sign_ups do |t|

      t.timestamps
    end
  end
end
