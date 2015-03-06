# this is a comment
class AdvertisesController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show]
  before_action :set_advertise, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    if !params[:search].nil?
      @search = Advertise.ransack(search_params)
      @advertises = @search.result.page(params[:page]).per(10)
    else
      @advertises = Advertise.all.page(params[:page]).per(10)
    end
    respond_with(@advertise)
  end

  def show
    respond_with(@advertise)
  end

  def new
    @advertise = Advertise.new
    respond_with(@advertise)
  end

  def edit
  end

  def create
    params[:advertise][feature_ids][0]
    @advertise = Advertise.new(advertise_params)
    @advertise.save
    respond_with(@advertise)
  end

  def update
    @advertise.update(advertise_params)
    respond_with(@advertise)
  end

  def destroy
    @advertise.destroy
    respond_with(@advertise)
  end

  private

  def set_advertise
    @advertise = Advertise.friendly.find(params[:id])
  end

  def advertise_params
    params.require(:advertise).permit(:title,
                                      :description,
                                      :direction,
                                      :price,
                                      :negotiable,
                                      :credit,
                                      :price_,
                                      :m2,
                                      :name_contact,
                                      :phone_contact,
                                      :time_to_contact,
                                      :property_type_id,
                                      :transaction_type_id,
                                      :visits_number,
                                      :publish_date,
                                      :validate_date,
                                      :user_id,
                                      feature_ids: [],
                                      photos_attributes: [:image, :description],
                                      locations_attributes: [:name, :ancestry])
  end

  def search_params
    params.require(:search).permit(:id_eq)
  end
end
