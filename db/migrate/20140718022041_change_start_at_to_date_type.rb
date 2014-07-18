class ChangeStartAtToDateType < ActiveRecord::Migration
  def change
  	change_column Commitment, :start_at, :date
  end
end
