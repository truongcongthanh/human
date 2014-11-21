class CreateChucdanhs < ActiveRecord::Migration
  def change
    create_table :chucdanhs do |t|
      t.string :ten_vi
      t.string :ten_en
      t.string :ten_ot
      t.references :nhomchucdanh, index: true

      t.timestamps
    end
  end
end
