class CreateTranslationProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :translation_projects do |t|
      t.string :title
      t.text :description 
      t.boolean :migrate_data,  true
      
    end
  end
end
