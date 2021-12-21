class PropertiesController < ApplicationController
  require_relative './concepts/rest_helper'

  def index
    @request = RestHelper.get_properties_list(params[:id])
    @response = JSON.parse(@request.body)
  end

  def show
    @request = RestHelper.get_property(params[:property_id])
    @response = JSON.parse(@request.body)
  end

  def new_lead
    @request = RestHelper.post_lead(lead_params)
    redirect_to property_details_url(lead_params['property_id'])
  end

  private

  def properties_params
    params.permit(:id)
  end

  def lead_params
    params.permit(:name, :phone, :email, :message, :property_id)
  end
end
