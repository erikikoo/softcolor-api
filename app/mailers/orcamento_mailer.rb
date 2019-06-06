class OrcamentoMailer < ApplicationMailer
 
  def send_orcamento
    @orcamento = params[:orcamento]    
    
    if @orcamento['arte']
      ext = @orcamento['arte'].original_filename.split(".").last         

      attachments["arte.#{ext}"] = File.read(@orcamento['arte'].path())
    end
    email = ["marion@softcolor.com.br", "artes@softcolor.com.br", "erikikoo@hotmail.com"]
    mail(
      from: @orcamento['email'], 
      to: email,
           
      subject: 'Solicitação de orçamento - Site')
  end
end

