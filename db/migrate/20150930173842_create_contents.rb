class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :song

      t.timestamps null: false
    end
  end
end
