class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.date :purchased_on
      t.decimal :amount
      t.text :description
      t.references :user, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
