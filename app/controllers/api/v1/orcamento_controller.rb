module Api::V1
  class OrcamentoController < ApplicationController

    skip_before_action :authenticate_request, only: [:send_orcamento]
    
    def send_orcamento
      # OrcamentoMailer.send.deliver_now!
      
      OrcamentoMailer.with(orcamento: params[:orcamento]).send_orcamento.deliver_now!
    end

  end
end  
