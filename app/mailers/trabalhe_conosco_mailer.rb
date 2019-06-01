class TrabalheConoscoMailer < ApplicationMailer
    def send_trabalhe_conosco
        @orcamento = params[:orcamento]    
        
        if @orcamento['arte']
            ext = @orcamento['arte'].original_filename.split(".").last
        
            attachments["curriculo.#{ext}"] = File.read(@orcamento['curriculo'].path())
        end

        mail(to: "erikikoo@hotmail.com", subject: 'Curriculo - Site')
      end
end
