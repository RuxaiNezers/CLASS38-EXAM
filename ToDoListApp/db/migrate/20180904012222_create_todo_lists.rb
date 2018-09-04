class CreateTodoLists < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_lists do |t|
      t.string :Title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
