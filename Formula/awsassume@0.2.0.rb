require "language/go"

class AwsassumeAT020 < Formula

desc "A utility to make assuming roles with the AWS CLI easier"
url "https://github.com/tim-rodgers/awsassume/releases/download/v0.2/awsassume.tar.gz"
sha256 "383ac0c00f2b0ac9305d3ac1d65cecc0d17eda1c53d15e3515c6034ad9d5c56a"
head "https://github.com/tim-rodgers/awsassume"

def install
    bin.install "awsassume"
  end

  test do
    system "system true"
  end
end