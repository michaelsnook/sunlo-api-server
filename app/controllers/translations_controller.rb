class TranslationsController < InheritedResources::Base
  respond_to :html, :json

  private

    def translation_params
      params.require(:translation).permit(:text, :localised_text, :phrase_id, :language_id)
    end
end
