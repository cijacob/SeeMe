class RemoveProjectIdFromTrainees < ActiveRecord::Migration[6.0]
  def change

    remove_column :trainees, :project_id, :integer
  end
end
