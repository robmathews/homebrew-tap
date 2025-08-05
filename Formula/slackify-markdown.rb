class SlackifyMarkdown < Formula
  desc "Convert Markdown to Slack formatting"
  homepage "https://github.com/yourusername/slackify-markdown"
  url "https://github.com/yourusername/slackify-markdown/archive/v1.0.0.tar.gz"
  sha256 "YOUR_SHA256_HERE"  # Get this from: shasum -a 256 v1.0.0.tar.gz
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    # Test basic functionality
    assert_match "*bold*", pipe_output("#{bin}/slackify-markdown", "**bold**")
  end
end