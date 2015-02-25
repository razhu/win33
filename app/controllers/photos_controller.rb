class PhotosController < InheritedResources::Base

  private

    def photo_params
      params.require(:photo).permit(:image,
                                    :description,
                                    :advertise_id)
    end
end

