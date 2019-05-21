class OrcamentoMailer < ApplicationMailer
 
  def send_orcamento
    @orcamento = params[:orcamento]   

    puts @orcamento
    mail to: "erikikoo@hotmail.com"
  end
end
