require 'test_helper'

class OrcamentoMailerTest < ActionMailer::TestCase
  test "send" do
    mail = OrcamentoMailer.send
    assert_equal "Send", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
