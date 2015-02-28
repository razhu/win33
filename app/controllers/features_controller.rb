class FeaturesController < InheritedResources::Base
  private

    def feature_params
      params.require(:feature).permit(:feature_type, :description)
    end
end
