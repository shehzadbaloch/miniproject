class CreateIncludes < ActiveRecord::Migration
  def change
    create_table :includes do |t|
      t.string :quantity
      t.references :order, index: true
      t.references :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :includes, :orders
    add_foreign_key :includes, :products
  end
end
