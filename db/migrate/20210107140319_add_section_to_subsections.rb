class AddSectionToSubsections < ActiveRecord::Migration[6.0]
  def change
    add_reference :subsections, :section, foreign_key: true, index: true
  end
end