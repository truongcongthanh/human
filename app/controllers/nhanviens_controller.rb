class NhanviensController < ApplicationController

  respond_to :html, :js, :json

  def index
     @nhanviens = Nhanvien.all
  end

  def new
    @nhanvien = Nhanvien.new
  end

  def create
    @nhanviens = Nhanvien.all
    @nhanvien = Nhanvien.create(param_nhanvien)
  end

  def edit
    @nhanvien = Nhanvien.find(params[:id])
  end

  def update
    @nhanviens = Nhanvien.all
    @nhanvien = Nhanvien.find(params[:id])
    @nhanvien.update_attributes(param_nhanvien)
  end

  private
  def param_nhanvien
    params.require(:nhanvien).permit(:manv, :machamcong, :ho, :ten, :gioitinh_id, :ngaysinh, :namsinh, :noisinh, :nguyenquan,
     :socmnd, :ngaycapcmnd,:noicapcmnd, :sohochieu, :ngaycaphochieu, :ngayhethanhochieu, :noicaphochieu, :honnhan_id, :dmquocgia_id,
     :btddt_id, :tongiao_id, :thanhphangiadinh_id, :thanhphanbanthan_id, :trinhdohocvan_id, :trinhdodaotao_id,
     :noidaotao, :khoadaotao, :chuyennganhdaotao, :namtotnghiep, :xeploaitotnghiep, :nghenghiep_id, :dtdd, :dtcoquan,
     :emailcanhan, :emailcoquan, :dtnharieng, :yahoo, :skype, :diachithuongtru, :thuongtru_btdtt_id, :thuongtru_btdquan_id,
     :thuongtru_btdpxa_id, :diachitamtru, :tamtru_btdtt_id, :tamtru_btdquan_id, :tamtru_btdpxa_id, :hotennguoithan,
     :quanhegiadinh_id, :emailnguoithan, :dtddnguoithan, :dtnhariengnguoithan, :diachinguoithan, :dangvien, :ngaydubidang, :ngaychinhthucdang,
    :dang_chucvu_id, :noiketnapdang, :doanvien, :ngayvaodoan, :doan_chucvu_id, :noiketnapdoan, :quannhan, :ngaynhapngu, :donvinhapngu,
    :ngayxuatngu, :chucvutrongquanngu, :quanham, :binhchung, :lydoxuatngu, :thuongbinh, :ngaythamgiacachmang, :hangthuongbinh, :tylesuygiamlaodong,
    :huongchedo, :nhommau, :chieucao, :cannang, :thongtinsuckhoe, :canluuysuckhoe, :benhtat, :nguoikhuyettat, :muctieucanhan, :sothich,
    :diemmanh, :diemyeu)
  end
end
