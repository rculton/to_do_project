class AddPriorityToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :priority, :boolean, default: false
  end
end
