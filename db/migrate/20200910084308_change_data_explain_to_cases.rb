class ChangeDataExplainToCases < ActiveRecord::Migration[5.2]
  def change
    change_column :cases, :explain, :text
  end
end
