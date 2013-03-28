class AddEmbeddedUrls < ActiveRecord::Migration
  def up
    add_column :loops, :embedded, :string
  end

  def down
  end
end
