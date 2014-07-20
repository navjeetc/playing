class ChangeStartAtToDateTime < ActiveRecord::Migration
  def change
  	change_column :commitments, :start_at, :datetime
  end
end
