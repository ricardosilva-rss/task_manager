class AddColorToList < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :card_color, :string, default: "orange"
  end
end
