cask "envilope" do
  version "0.6.5"
  sha256 "ffe359806cf4abd397539f77d1cbe8829adb31ee1446f675da64f909c6180aba"

  url "https://78PAcXfL3lMougPqAWCOqZ14eleEopQj4cERTfC5AmXcMe8mhTQX7bqYoUgCg7P.envilope.io/0.6.5/darwin/mac_installer.sh"
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

