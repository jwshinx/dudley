class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :prodid
      t.integer :sequence
      t.integer :like1id
      t.integer :like2id
      t.integer :like3id
      t.integer :like4id
      t.decimal :price
      t.decimal :shipping
      t.string :category
      t.string :name
      t.string :maintn
      t.string :tn1
      t.string :full1
      t.string :tn2
      t.string :full2
      t.string :tn3
      t.string :full3
      t.string :like1tn
      t.string :like2tn
      t.string :like3tn
      t.string :like4tn
      t.text :description
      t.text :size

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
