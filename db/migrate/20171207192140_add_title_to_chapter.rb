class AddTitleToChapter < ActiveRecord::Migration[5.1]
  def change
    add_column :chapters, :title, :string
  end
end
