class CreateIgoForms < ActiveRecord::Migration
  def change
    create_table :igo_forms do |t|

      t.timestamps
    end
  end
end
