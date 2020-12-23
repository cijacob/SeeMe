class CreateTrainees < ActiveRecord::Migration[6.0]
  def change
    create_table :trainees do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.integer :telephone
      t.date :birthdate
      t.boolean :sexe

      t.timestamps
    end
  end
end
