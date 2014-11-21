class CreateNganhangs < ActiveRecord::Migration
  def change
    create_table :nganhangs do |t|
      t.string :ma
      t.string :ten_vi
      t.string :ten_en
      t.string :ten_ot

      t.timestamps
    end
  end
end
