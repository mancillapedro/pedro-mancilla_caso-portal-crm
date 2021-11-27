class CreateLeadTalks < ActiveRecord::Migration[6.0]
  def change
    create_table :lead_talks do |t|
      t.references :lead, null: false, foreign_key: true
      t.references :talk, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
