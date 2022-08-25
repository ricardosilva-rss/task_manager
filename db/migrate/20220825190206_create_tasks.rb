class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :location
      t.datetime :date
      t.boolean :concluded

      t.timestamps
    end
  end
end
