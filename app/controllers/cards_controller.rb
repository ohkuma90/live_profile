class CardsController < ApplicationController
  
  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end

private

def card_params
  params.require(:card).permit(:live, :rank1, :rank2, :rank3).merge(user_id: current_user.id)
end