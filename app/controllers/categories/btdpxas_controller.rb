module Categories
  class BtdpxasController < BaseController

    def index
      @btdpxas = Btdpxa.order(:id).paginate(:page => params[:page], :per_page => 15)
    end

    def new
      @btdpxa = Btdpxa.new
    end

    def create
      @btdpxas = Btdpxa.order(:id).paginate(:page => params[:page], :per_page => 15)
      @btdpxa = Btdpxa.create(params_btdpxa)
    end

    def edit
      @btdpxa = Btdpxa.find(params[:id])
    end

    def update
      @btdpxas = Btdpxa.order(:id).paginate(:page => params[:page], :per_page => 15)
      @btdpxa = Btdpxa.find(params[:id])
      @btdpxa.update_attributes(params_btdpxa)
    end

    def delete
      @btdpxa = Btdpxa.find(:btdpxa_id)
    end

    def destroy
      @btdpxas = Btdpxa.order(:id).paginate(:page => params[:page], :per_page => 15)
      @btdpxa = Btdpxa.find(params[:id])
      @btdpxa.destroy
    end

    private
    def params_btdpxa
      params.require(:btdpxa).permit(:ten_vi, :ten_en, :ten_ot, :viettat, :btdquan_id)
    end
  end
end
