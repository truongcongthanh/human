class CreateBtdquans < ActiveRecord::Migration
  def change
    create_table :btdquans do |t|
      t.string :ten_vi
      t.string :ten_en
      t.string :ten_ot
      t.references :btdtt, index: true

      t.timestamps
    end
  end
end
