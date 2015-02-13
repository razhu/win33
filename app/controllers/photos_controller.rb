class PhotosController < InheritedResources::Base

  private

    def photo_params
      params.require(:photo).permit(:ubication, :genre)
    end
end

