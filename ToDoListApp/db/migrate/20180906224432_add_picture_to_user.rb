class AddPictureToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :picture, :string, default: 'none.png'
  end
end
