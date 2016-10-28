class CreateTeammates < ActiveRecord::Migration[5.0]
  def change
    create_table :teammates do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.integer :team_id

      t.timestamps
    end
  end
end
