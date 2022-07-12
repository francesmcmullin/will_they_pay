class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :result, null: false, foreign_key: true
      t.references :plan, null: false, foreign_key: true
      t.references :treatment, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
