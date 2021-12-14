class CreateWines < ActiveRecord::Migration[6.1]
  def change
    create_table :wines do |t|
      t.string :title
      t.string :type
      t.integer :year
      t.integer :price
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
