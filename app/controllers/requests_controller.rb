class RequestsController < InheritedResources::Base

  private

    def request_params
      params.require(:request).permit(:title, :request_description, :price, :publish_date, :validate_date, :name, :phone, :cellphone, :skypeAcc, :email)
    end
end

