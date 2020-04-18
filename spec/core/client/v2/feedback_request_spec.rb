RSpec.describe Core::Client::V2::FeedbackRequest do
  it ".first returns an instance of Core::Client::V2::FeedbackRequest" do
    feedback_request = Core::Client::V2::FeedbackRequest.first
    expect(feedback_request).to be_a Core::Client::V2::FeedbackRequest
    expect(feedback_request.type).to eq "feedbackRequests"
  end
end
