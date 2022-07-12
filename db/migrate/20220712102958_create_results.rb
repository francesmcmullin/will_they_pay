class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.float :percent_covered
      t.integer :days_waited

      t.timestamps
    end
  end
end
