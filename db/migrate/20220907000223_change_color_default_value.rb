class ChangeColorDefaultValue < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :card_color, :string, default: "yellow"
  end
end
