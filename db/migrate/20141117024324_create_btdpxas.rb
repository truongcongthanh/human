class CreateBtdpxas < ActiveRecord::Migration
  def change
    create_table :btdpxas do |t|
      t.string :ten_vi
      t.string :ten_en
      t.string :ten_ot
      t.string :viettat
      t.references :btdquan, index: true

      t.timestamps
    end
  end
end
