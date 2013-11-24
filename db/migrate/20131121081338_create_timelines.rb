class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.string :name
      t.string :url
      t.string :top_image
      t.references :user

      t.timestamps
    end
  end
end
