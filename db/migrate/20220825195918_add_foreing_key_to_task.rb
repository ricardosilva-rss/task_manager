class AddForeingKeyToTask < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :list, null: false, foreign_key: true
  end
end
