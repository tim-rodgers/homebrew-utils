require "language/go"

class Awsassume < Formula

desc "A utility to make assuming roles with the AWS CLI easier"
url "https://github.com/tim-rodgers/awsassume/releases/download/v0.3/awsassume-v0.3.tar.gz"
sha256 "3e7374464ed40cf498ab0b134b017baa2fa4877970fc424bffd73c19b4132ca2"
head "https://github.com/tim-rodgers/awsassume"

def install
    bin.install "awsassume"
  end

  test do
    system "system true"
  end
end
