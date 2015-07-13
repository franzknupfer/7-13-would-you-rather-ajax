class AddBooleans < ActiveRecord::Migration
  def change
    add_column :votes, :option1, :boolean, default: false
    add_column :votes, :option2, :boolean, default: false
    change_column :votes, :vote, :boolean, default: false
  end
end
