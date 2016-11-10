class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :title
      t.text :description
      t.boolean :double
      t.boolean :single
      t.integer :number
      t.date :date
      t.time :time
      t.decimal :fee
      t.string :location

      t.timestamps
    end
  end
end
