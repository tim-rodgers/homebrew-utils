require "language/go"

class AwsassumeAT010 < Formula

desc "A utility to make assuming roles with the AWS CLI easier"
url "https://github.com/tim-rodgers/awsassume/releases/download/v0.1/awsassume.tar.gz"
sha256 "7d8cc12cdc72a5c0f3aff3f6e583db7deef53640262b37879808918c02a1a115"
head "https://github.com/tim-rodgers/awsassume"

def install
    bin.install "awsassume"
  end

  test do
    system "system true"
  end
end