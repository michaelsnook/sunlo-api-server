class PhrasesController < InheritedResources::Base
  respond_to :html, :json

  private

    def phrase_params
      params.require(:phrase).permit(:text, :localised_text, :language_id)
    end
end
