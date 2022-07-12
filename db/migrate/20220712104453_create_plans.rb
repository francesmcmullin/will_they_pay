class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.string :name
      t.text :description
      t.text :area
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
