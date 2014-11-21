module Categories
  class VungbvsController < BaseController
    def index
      @vungbvs = Vungbv.all
    end

    def new
      @vungbv = Vungbv.new
    end

    def create
      @vungbvs = Vungbv.all
      @vungbv = Vungbv.create(param_vungbv)
    end

    def edit
      @vungbv = Vungbv.find(params[:id])
    end

    def update
      @vungbvs = Vungbv.all
      @vungbv = Vungbv.find(params[:id])
      @vungbv.update_attributes(param_vungbv)
    end

    def delete
      @vungbv = Vungbv.find(params[:vungbv_id])
    end

    def destroy
      @vungbvs = Vungbv.all
      @vungbv = Vungbv.find(params[:id])
      @vungbv.destroy
    end

    private
    def param_vungbv
      params.require(:vungbv).permit(:ten_vi, :ten_en, :ten_ot)
    end
  end
end
