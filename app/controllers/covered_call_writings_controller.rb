class CoveredCallWritingsController < ApplicationController
    def index
        render json: CoveredCallWriting.all
    end
end
