class CreateWines < ActiveRecord::Migration[6.1]
  def change
    create_table :wines do |t|
      t.string :title
      t.integer :price
      t.references :country, null: false, foreign_key: true
      t.string :wine_category
      t.integer :year

      t.timestamps
    end
  end
end
