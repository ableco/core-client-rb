RSpec.describe Core::Client::V2::FeedbackHighlight do
  it ".first returns an instance of Core::Client::V2::FeedbackHighlight" do
    feedback_highlight = Core::Client::V2::FeedbackHighlight.first
    expect(feedback_highlight).to be_a Core::Client::V2::FeedbackHighlight
    expect(feedback_highlight.type).to eq "feedbackHighlights"
  end
end
