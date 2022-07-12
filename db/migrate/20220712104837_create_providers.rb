class CreateProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.text :description
      t.string :specialty
      t.text :area

      t.timestamps
    end
  end
end
