class TrabalheConoscoMailer < ApplicationMailer
    # default from: 'erikikoo@hotmail.com'    
    
    def send_trabalhe_conosco
            @trabalhe_conosco = params[:trabalhe_conosco]    
            
            unless params[:trabalhe_conosco][:curriculo].nil?
                ext = @trabalhe_conosco['curriculo'].original_filename.split(".").last
                nome = "#{params[:trabalhe_conosco][:nome]} #{ params[:trabalhe_conosco][:sobrenome]}"
                attachments["#{nome}-curriculo.#{ext}"] = File.read(@trabalhe_conosco['curriculo'].path())
            end

            # mail(to: "erikikoo@hotmail.com")
            mail(
                to: "erikikoo@hotmail.com", 
                from: 'teste@hotmail.com', 
                subject: "Curriculo - #{nome}"
            )
                # mail(
                #     from: 'teste@hotmail.com', 
                #     to: 'erikikoo@hotmail.com', 
                #     subject: 'Subject'
                # )
    end
end
