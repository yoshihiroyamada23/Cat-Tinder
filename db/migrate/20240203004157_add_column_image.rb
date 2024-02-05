class AddColumnImage < ActiveRecord::Migration[7.1]
  def change
    add_column :cats, :image, :text
  end
end
