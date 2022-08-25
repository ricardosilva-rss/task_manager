class AddDefaultValueToConcludedInTasks < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :concluded, :boolean, default: false
  end
end
