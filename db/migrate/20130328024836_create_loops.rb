class CreateLoops < ActiveRecord::Migration
  def change
    create_table :loops do |t|
      t.string :url

      t.timestamps
    end
  end
end
