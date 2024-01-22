class CreateMusicians < ActiveRecord::Migration[7.1]
  def change
    create_table :musicians do |t|
      t.references :user, null: false, foreign_key: true
      t.string :availability

      t.timestamps
    end
  end
end
