class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :branch
      t.integer :months
      t.string :start_location
      t.string :end_location
      t.integer :goal

      t.timestamps
    end
  end
end
