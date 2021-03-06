class CreateNhanviens < ActiveRecord::Migration
  def change
    create_table :nhanviens do |t|
      t.string :manv
      t.string :machamcong
      t.string :ho
      t.string :ten
      t.integer :gioitinh_id
      t.datetime :ngaysinh
      t.integer :namsinh
      t.string :noisinh
      t.string :nguyenquan
      t.string :socmnd
      t.datetime :ngaycapcmnd
      t.string :noicapcmnd
      t.string :sohochieu
      t.datetime :ngaycaphochieu
      t.datetime :ngayhethanhochieu
      t.string :noicaphochieu
      t.integer :honnhan_id
      t.integer :thanhphangiadinh_id
      t.integer :thanhphanbanthan_id
      t.integer :btddt_id
      t.integer :tongiao_id
      t.integer :dmquoctich_id
      t.integer :trinhdohocvan_id
      t.integer :trinhdodaotao_id
      t.string :noidaotao
      t.string :khoadaotao
      t.string :chuyennganhdaotao
      t.integer :namtotnghiep
      t.string :xeploaitotnghiep
      t.integer :nghenghiep_id
      t.string :dtdd
      t.string :dtcoquan
      t.string :emailcanhan
      t.string :emailcoquan
      t.string :dtnharieng
      t.string :yahoo
      t.string :skype
      t.string :diachithuongtru
      t.integer :thuongtru_btdtt_id
      t.integer :thuongtru_btdquan_id
      t.integer :thuongtru_btdpxa_id
      t.string :diachitamtru
      t.integer :tamtru_btdtt_id
      t.integer :tamtru_btdquan_id
      t.integer :tamtru_btdpxa_id
      t.string :hotennguoithan
      t.integer :quanhegiadinh_id
      t.string :emailnguoithan
      t.string :dtddnguoithan
      t.string :dtnhariengnguoithan
      t.string :diachinguoithan
      t.string :masothue
      t.string :taikhoannganhang
      t.string :nganhang_id
      t.boolean :dangvien
      t.datetime :ngaydubidang
      t.datetime :ngaychinhthucdang
      t.integer :dang_chucvu_id
      t.string :noiketnapdang
      t.boolean :doanvien
      t.datetime :ngayvaodoan
      t.integer :doan_chucvu_id
      t.string :noiketnapdoan
      t.boolean :quannhan
      t.datetime :ngaynhapngu
      t.string :donvinhapngu
      t.datetime :ngayxuatngu
      t.string :chucvutrongquanngu
      t.string :quanham
      t.string :binhchung
      t.string :lydoxuatngu
      t.boolean :thuongbinh
      t.datetime :ngaythamgiacachmang
      t.string :hangthuongbinh
      t.string :tylesuygiamlaodong
      t.boolean :huongchedo
      t.string :nhommau
      t.string :chieucao
      t.string :cannang
      t.string :thongtinsuckhoe
      t.string :canluuysuckhoe
      t.string :benhtat
      t.boolean :nguoikhuyettat
      t.text :muctieucanhan
      t.text :sothich
      t.text :diemmanh
      t.text :diemyeu
      t.timestamps
    end
  end
end
