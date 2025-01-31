cask "pixelpulse2" do
    version "putyourappversionhere"
    sha256 "putyourzipsha256here" # Replace with your PKG's SHA-256 hash
  
    url "putyourdownloadurlhere"
    name "Pixelpulse2"
    desc "Pixelpulse2 is a user interface for analog systems exploration. Companion app for Adalm1000"
    homepage "m1k-builds.pages.dev/Pixelpulse2-MacOS"
  
    app "pixelpulse2.app"
    uninstall pkgutil: "com.analogdevicesinc.pixelpulse2"

    def post_install
        system "codesign", "--force", "--deep", "--sign", "-", Contents/MacOS/pixelpulse2
    end
  end
  
