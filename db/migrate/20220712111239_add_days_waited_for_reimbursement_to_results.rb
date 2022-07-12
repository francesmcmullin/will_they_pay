class AddDaysWaitedForReimbursementToResults < ActiveRecord::Migration[7.0]
  def change
    add_column :results, :days_waited_for_reimbursement, :integer
  end
end
