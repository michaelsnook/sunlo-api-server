class DecksController < InheritedResources::Base

  private

    def deck_params
      params.require(:deck).permit(:user_id, :language_id)
    end
end
