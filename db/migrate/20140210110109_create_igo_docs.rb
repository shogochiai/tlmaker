class CreateIgoDocs < ActiveRecord::Migration
  def change
    create_table :igo_docs do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
