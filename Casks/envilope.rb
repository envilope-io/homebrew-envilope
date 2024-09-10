cask "envilope" do
  version "0.6.5"
  sha256 "f27cfb4fc6646ecfaeb86fd245843e0bd19411f727b32def0bd409bb69245b64"

  url "https://78PAcXfL3lMougPqAWCOqZ14eleEopQj4cERTfC5AmXcMe8mhTQX7bqYoUgCg7P.envilope.io/0.6.9/darwin/mac_installer.sh"
  name "envilope.io"
  desc "The fast, simple, and secure solution to k8s development."
  homepage "https://envilope.io"

  postflight do
    installer_script = "#{staged_path}/mac_installer.sh"
    system_command "/bin/bash",
                   args: [installer_script],
                   sudo: true
  end
end

