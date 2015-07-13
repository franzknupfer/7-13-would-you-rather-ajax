class Questions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.column :title, :string
      t.column :description, :string
      t.column :option1, :string
      t.column :option2, :string
      t.column :user_id, :integer
    end
  end
end
