class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.belongs_to :cart, foreign_key: true, optional: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
