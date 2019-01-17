require "language/go"

class AwsassumeAT010 < Formula

require "language/go"

desc "A utility to make assuming roles with the AWS CLI easier"
url "https://github.com/tim-rodgers/awsassume/archive/v0.1.tar.gz"
sha256 "027ef8a495c925b99cfea31b967efa9906c24844f5a02a5fb230d70847780055"
head "https://github.com/tim-rodgers/awsassume"

deps = %w[
    github.com/aws/aws-sdk-go d2d8f8c33f49af99cdd889f6897ffd525c520407
    github.com/go-ini/ini 6ed8d5f64cd79a498d1f3fab5880cc376ce41bbe
    github.com/mitchellh/go-homedir ae18d6b8b3205b561c79e8e5f69bff09736185f4
    github.com/spf13/cobra ef82de70bb3f60c65fb8eebacbb2d122ef517385
    github.com/spf13/viper 6d33b5a963d922d182c91e8a1c88d81fd150cfd4
]

deps.each_slice(2) do |x,y|
    go_resource x do
        url "https://#{x}.git", :revision => y
    end
end



  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath


    bin_path = buildpath/"src/github.com/kevinburke/hostsfile"
    # Copy all files from their current location (GOPATH root)
    # to $GOPATH/src/github.com/kevinburke/hostsfile
    bin_path.install Dir["*"]

    # Stage dependencies. This requires the "require language/go" line above
    Language::Go.stage_deps resources, buildpath/"src"
    cd bin_path do
      # Install the compiled binary into Homebrew's `bin` - a pre-existing
      # global variable
      system "go", "build", "-o", bin/"hostsfile", "."
    end
  end

  # Homebrew requires tests.
  test do
    system true
  end
end