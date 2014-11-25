module Categories
  class BtdquansController < BaseController

    def index
      @btdquans = Btdquan.order(:id).paginate(:page => params[:page], :per_page => 15)
    end

    def new
      @btdquan = Btdquan.new
    end

    def create
      @btdquans = Btdquan.order(:id).paginate(:page => params[:page], :per_page => 15)
      @btdquan = Btdquan.create(params_btdquan)
    end

    def edit
      @btdquan = Btdquan.find(params[:id])
    end

    def update
      @btdquans = Btdquan.order(:id).paginate(:page => params[:page], :per_page => 15)
      @btdquan = Btdquan.find(params[:id])
      @btdquan.update_attributes(params_btdquan)
    end

    def delete
      @btdquan = Btdquan.find(:btdquan_id)
    end

    def destroy
      @btdquans = Btdquan.order(:id).paginate(:page => params[:page], :per_page => 15)
      @btdquan = Btdquan.find(params[:id])
      @btdquan.destroy
    end

    private
    def params_btdquan
      params.require(:Btdquan).permit(:ten_vi, :ten_en, :ten_ot, :btdtt_id)
    end
  end
end
