module Api::V1
    class TrabalheConoscoController < ApplicationController
        skip_before_action :authenticate_request, only: [:send_trabalhe_conosco]
    
        def send_trabalhe_conosco
        # OrcamentoMailer.send.deliver_now!
        
        
        
        TrabalheConoscoMailer.with(trabalhe_conosco: params[:trabalhe_conosco]).send_trabalhe_conosco.deliver_now!
        end
    end
end