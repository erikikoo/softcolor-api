class TrabalheConoscoMailer < ApplicationMailer
    # default from: 'erikikoo@hotmail.com'    
    default from: 'Site'

    def send_trabalhe_conosco
            @trabalhe_conosco = params[:trabalhe_conosco]    
            email_with_name = %("#{@trabalhe_conosco['name']}")
            unless params[:trabalhe_conosco][:curriculo].nil?
                ext = @trabalhe_conosco['curriculo'].original_filename.split(".").last
                nome = "#{params[:trabalhe_conosco][:nome]} #{ params[:trabalhe_conosco][:sobrenome]}"
                attachments["#{nome}-curriculo.#{ext}"] = File.read(@trabalhe_conosco['curriculo'].path())
            end            

            mail(
                to: "erikikoo@hotmail.com",            
                from: @trabalhe_conosco['email'],
                subject: "Curriculo - #{nome}"
            )

    end
end
