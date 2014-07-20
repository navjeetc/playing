class ChangeStartAtToDateType < ActiveRecord::Migration
  def change
  	change_column :commitments, :start_at, :date
  end
end
