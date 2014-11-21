class CreateThanhphanbanthans < ActiveRecord::Migration
  def change
    create_table :thanhphanbanthans do |t|
      t.string :ten_vi
      t.string :ten_en
      t.string :ten_ot

      t.timestamps
    end
  end
end
