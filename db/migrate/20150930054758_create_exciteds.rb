class CreateExciteds < ActiveRecord::Migration
  def change
    create_table :exciteds do |t|
      t.string :song

      t.timestamps null: false
    end
  end
end
