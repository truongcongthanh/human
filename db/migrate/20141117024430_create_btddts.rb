class CreateBtddts < ActiveRecord::Migration
  def change
    create_table :btddts do |t|
      t.string :ten_vi
      t.string :ten_en
      t.string :ten_ot

      t.timestamps
    end
  end
end
