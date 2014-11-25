module Categories
  class DmquoctichesController < BaseController
    def index
      @dmquoctiches = Dmquoctich.all
    end

    def new
      @dmquoctich = Dmquoctich.new
    end

    def create
      @dmquoctiches = Dmquoctich.all
      @dmquoctich = Dmquoctich.create(param_dmquoctich)
    end

    def edit
      @dmquoctich = Dmquoctich.find(params[:id])
    end

    def update
      @dmquoctiches = Dmquoctich.all
      @dmquoctich = Dmquoctich.find(params[:id])
      @dmquoctich.update_attributes(param_dmquoctich)
    end

    def delete
      @dmquoctich = Dmquoctich.find(params[:dmquoctich_id])
    end

    def destroy
      @dmquoctiches = Dmquoctich.all
      @dmquoctich = Dmquoctich.find(params[:id])
      @dmquoctich.destroy
    end

    private
    def param_dmquoctich
      params.require(:dmquoctich).permit(:ma, :ten_vi, :ten_en, :ten_ot, :iso)
    end
  end
end
