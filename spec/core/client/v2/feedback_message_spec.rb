RSpec.describe Core::Client::V2::FeedbackMessage do
  it ".first returns an instance of Core::Client::V2::FeedbackMessage" do
    feedback_message = Core::Client::V2::FeedbackMessage.first
    expect(feedback_message).to be_a Core::Client::V2::FeedbackMessage
    expect(feedback_message.type).to eq "feedbackMessages"
  end
end
