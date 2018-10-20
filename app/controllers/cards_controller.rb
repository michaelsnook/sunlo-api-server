class CardsController < InheritedResources::Base
  before_action :authenticate_user!
  respond_to :html, :json

  def show
    @card = Card.where(deck_id: current_user.decks.pluck(:id)).find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:notice] = "No such card"
    redirect_to :action => 'index'
  end

  def index
    @cards = Card.where(deck_id: current_user.decks.pluck(:id))
  end

  private

    def card_params
      params.require(:card).permit(:phrase_id, :deck_id, :status)
    end
end
