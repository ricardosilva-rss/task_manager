class AddColorToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :card_color, :string, default: "#FCF595"
  end
end
