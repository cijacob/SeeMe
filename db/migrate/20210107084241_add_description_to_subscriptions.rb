class AddDescriptionToSubscriptions < ActiveRecord::Migration[6.0]
  def change
    add_column :subsections, :description, :text
  end
end
