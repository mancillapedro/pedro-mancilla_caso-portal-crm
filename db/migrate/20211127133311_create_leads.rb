class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :surname
      t.string :telephone
      t.string :email
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
