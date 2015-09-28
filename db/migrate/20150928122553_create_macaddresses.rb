class CreateMacaddresses < ActiveRecord::Migration
  def change
    create_table :macaddresses do |t|
      t.string :macid
      t.string :description
      t.string :owner
      t.string :remarks

      t.timestamps null: false
    end
  end
end
