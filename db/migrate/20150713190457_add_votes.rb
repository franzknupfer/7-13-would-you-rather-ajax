class AddVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.column :vote, :boolean
      t.column :question_id, :integer
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
