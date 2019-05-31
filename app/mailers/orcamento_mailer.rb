class OrcamentoMailer < ApplicationMailer
 
  def send_orcamento
    @orcamento = params[:orcamento]
    puts '======================================='
    puts @orcamento['arte'].path()
    puts '======================================='    

    attachments['arte.jpg'] = File.read(@orcamento['arte'].path())
    
    mail to: "erikikoo@hotmail.com"
  end
end
