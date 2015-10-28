class CreateDoNuts < ActiveRecord::Migration
  def change
    create_table :do_nuts do |t|
      t.string :name
      t.string :string
      t.string :toppings
      t.string :price
      t.string :image

      t.timestamps null: false
    end
  end
end
