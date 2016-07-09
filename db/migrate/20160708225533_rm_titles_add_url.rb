class RmTitlesAddUrl < ActiveRecord::Migration
  def change
    remove_column :messages, :title, :string
    add_column :messages, :url, :string
  end
end
