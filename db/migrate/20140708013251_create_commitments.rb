class CreateCommitments < ActiveRecord::Migration
  def change
    create_table :commitments do |t|
      t.datetime :start_at
      t.float :duration
      t.references :user, index: true

      t.timestamps
    end
  end
end
