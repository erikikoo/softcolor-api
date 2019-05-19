# Preview all emails at http://localhost:3000/rails/mailers/orcamento_mailer
class OrcamentoMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/orcamento_mailer/send
  def send
    OrcamentoMailer.send
  end

end
