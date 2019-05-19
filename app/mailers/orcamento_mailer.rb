class OrcamentoMailer < ApplicationMailer
 
  def send_orcamento
    @greeting = "Hi"

    mail to: "erikikoo@hotmail.com"
  end
end
