class CreateTalks < ActiveRecord::Migration[6.0]
  def change
    create_table :talks do |t|
      t.text :message

      t.timestamps
    end
  end
end
