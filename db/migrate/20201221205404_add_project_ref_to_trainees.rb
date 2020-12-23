class AddProjectRefToTrainees < ActiveRecord::Migration[6.0]
  def change
    add_reference :trainees, :project, null: false, foreign_key: true
  end
end
