module Categories
  class BtdttsController < BaseController

    def index
      @btdtts = Btdtt.order(:id).paginate(:page => params[:page], :per_page => 15)
    end

    def new
      @btdtt = Btdtt.new
    end

    def create
      @btdtts = Btdtt.order(:id).paginate(:page => params[:page], :per_page => 15)
      @btdtt = Btdtt.create(params_btdtt)
    end

    def edit
      @btdtt = Btdtt.find(params[:id])
    end

    def update
      @btdtts = Btdtt.order(:id).paginate(:page => params[:page], :per_page => 15)
      @btdtt = Btdtt.find(params[:id])
      @btdtt.update_attributes(params_btdtt)
    end

    def delete
      @btdtt = Btdtt.find(:btdtt_id)
    end

    def destroy
      @btdtts = Btdtt.order(:id).paginate(:page => params[:page], :per_page => 15)
      @btdtt = Btdtt.find(params[:id])
      @btdtt.destroy
    end

    private
    def params_btdtt
      params.require(:btdtt).permit(:ten_vi, :ten_en, :ten_ot, :vungbv_id)
    end
  end
end
