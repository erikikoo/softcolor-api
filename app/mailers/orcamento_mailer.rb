class OrcamentoMailer < ApplicationMailer
 
  def send_orcamento
    @orcamento = params[:orcamento]    
    
    if @orcamento['arte']
      ext = @orcamento['arte'].original_filename.split(".").last         

      attachments["arte.#{ext}"] = File.read(@orcamento['arte'].path())
    end
    mail(to: "erikikoo@hotmail.com", subject: 'Solicitação de orçamento - Site')
  end
end

