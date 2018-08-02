class MathematicsController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    #attr_accessor :p1, :p2, :result



    def plus
        @calculation = Calculation.new(calculation_params)
        @p1= @calculation.p1
        @p2= @calculation.p2
        #@calculation.save
        @calculation.result = @p1 + @p2
        @calculation.save 
        respond_to do |format|
            format.json { render :json => { result: @calculation.result}.to_json }
        end
        #render json: @calculation.result

    end

    def minus
        @calculation = Calculation.new(calculation_params)
        @p1 = @calculation.p1
        @p2 = @calculation.p2
        @calculation.result = @p1 - @p2
        @calculation.save 
        respond_to do |format|
            format.json { render :json => { result: @calculation.result}.to_json }
        end
    end

    def multiply
        @calculation = Calculation.new(calculation_params)
        @p1 = @calculation.p1
        @p2 = @calculation.p2
        @calculation.result = @p1 * @p2
        @calculation.save 
        respond_to do |format|
            format.json { render :json => { result: @calculation.result}.to_json }
        end
    end

    def divide
        @calculation = Calculation.new(calculation_params)
        @p1 = @calculation.p1
        @p2 = @calculation.p2
        @calculation.result = @p1 / @p2
        @calculation.save 
        respond_to do |format|
            format.json { render :json => { result: @calculation.result}.to_json }
        end
    end

    private

    def calculation_params
        params.permit(:p1, :p2, :result)
    end

    #def json_request?
        #request.format.json?
      #end

end
