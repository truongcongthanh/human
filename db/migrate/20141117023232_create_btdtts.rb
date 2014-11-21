class CreateBtdtts < ActiveRecord::Migration
  def change
    create_table :btdtts do |t|
      t.string :ten_vi
      t.string :ten_en
      t.string :ten_ot
      t.references :vungbv, index: true

      t.timestamps
    end
  end
end
