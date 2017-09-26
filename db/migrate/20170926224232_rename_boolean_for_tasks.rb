class RenameBooleanForTasks < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :completed?, :complete
  end
end
