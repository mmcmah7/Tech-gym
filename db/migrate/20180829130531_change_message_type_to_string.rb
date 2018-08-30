class ChangeMessageTypeToString < ActiveRecord::Migration[5.2]
  def change
  	change_column :posts, :message, :text
  end
end
