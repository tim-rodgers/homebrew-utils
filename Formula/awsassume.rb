require "language/go"

class Awsassume < Formula

desc "A utility to make assuming roles with the AWS CLI easier"
url "https://github.com/tim-rodgers/awsassume/releases/download/v0.2.1/awsassume.tar.gz"
sha256 "7008479688d8b0cca8a6c4d178176eecc8d182376b31a7d3d15da98c5c2fc99e"
head "https://github.com/tim-rodgers/awsassume"

def install
    bin.install "awsassume"
  end

  test do
    system "system true"
  end
end
