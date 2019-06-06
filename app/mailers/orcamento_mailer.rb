class OrcamentoMailer < ApplicationMailer
 
  def send_orcamento
    @orcamento = params[:orcamento]    
    
    if @orcamento['arte']
      ext = @orcamento['arte'].original_filename.split(".").last         

      attachments["arte.#{ext}"] = File.read(@orcamento['arte'].path())
    end    
    mail(
      from: @orcamento['email'], 
      to: "seudesigner@outlook.com.br",           
      subject: 'Solicitação de orçamento - Site')
  end
end

