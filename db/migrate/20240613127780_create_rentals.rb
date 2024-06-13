class CreateRentals < ActiveRecord::Migration[7.1]
  def change
    create_table :rentals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :music_record, null: false, foreign_key: true
      t.date :rent_date
      t.decimal :price
      t.text :note
      t.string :damage_assessment

      t.timestamps
    end
  end
end
