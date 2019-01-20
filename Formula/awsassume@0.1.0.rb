require "language/go"

class AwsassumeAT010 < Formula

desc "A utility to make assuming roles with the AWS CLI easier"
url "https://github.com/tim-rodgers/awsassume/releases/download/v0.1/awsassume.tar.gz"
sha256 "d5a38240ee4aa2650411790226620cdd5aba438cd6aae944ce53585543392cbc"
head "https://github.com/tim-rodgers/awsassume"

def install
    bin.install "awsassume"
  end

  test do
    system "system true"
  end
end