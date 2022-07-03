class OrganizationsController < ApplicationController
  def index
    orgs = Organization.all
    render json: orgs.as_json
  end

  def show
    organization = Organization.find_by(id: params[:id])
    render json: organization.as_json
  end

  def create
    org = Organization.new(
      name: params[:name],
      hourly_rate: params[:hourly_rate],
    )
    org.save
    render json: org.as_json
  end

  def update
    org = Organization.find_by(id: params[:id])
    org.name = params[:name] || hourly_rate.name
    org.hourly_rate = params[:hourly_rate] || hourly_rate.width
    org.save
    render json: org.as_json
  end
end
