class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.string :explain
      t.string :image
      t.string :user
      t.string :problem
      t.timestamps
    end
  end
end
