class DecksController < InheritedResources::Base
  before_action :authenticate_user!
  respond_to :html, :json

  def index
    @decks = current_user.decks
  end

  def show
    @deck = Deck.where(user_id: current_user.id).find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:notice] = "No such deck"
    redirect_to :action => 'index'
  end

  private

    def deck_params
      params.require(:deck).permit(:user_id, :language_id)
    end
end
