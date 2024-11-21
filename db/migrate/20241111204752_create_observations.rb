class CreateObservations < ActiveRecord::Migration[7.2]
  def change
    create_table :observations do |t|
      t.string :content
      t.references :photo, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
