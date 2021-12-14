class CreateWines < ActiveRecord::Migration[6.1]
  def change
    create_table :wines do |t|
      t.string :title
      t.string :type
      t.integer :price
      t.integer :year
      t.country :belongs_to

      t.timestamps
    end
  end
end
