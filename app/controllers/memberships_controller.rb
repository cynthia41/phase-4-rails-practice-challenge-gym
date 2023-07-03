class MembershipsController < ApplicationController
    def create
        membership = Membership.new(membership_params)
        if membership.save
            render json: membership, status: :created
        else
            render json: {errors: membership.errors.full_messages}, status: :unprocessable_entity
    end
end
