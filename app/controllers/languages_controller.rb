class LanguagesController < InheritedResources::Base
  respond_to :html, :json

  private

    def language_params
      params.require(:language).permit(:name, :localised_name, :iso2, :iso3)
    end
end
