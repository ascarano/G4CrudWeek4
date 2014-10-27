class ChangeDescriptionColumn < ActiveRecord::Migration
  def change
    change_column :events_tables, :description, :text
  end
end
