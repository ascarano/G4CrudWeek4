class CreateEventsTable < ActiveRecord::Migration
  def change
    create_table :events_tables do |t|
      t.date :date
      t.string :location
      t.string :description
      t.integer :capacity
      t.boolean :requires_id
      t.timestamps
    end
  end
end
