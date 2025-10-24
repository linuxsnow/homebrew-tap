cask "bazzite-wallpapers" do
  version "2025-10-16"
  sha256 "dbad6b49fde49b731ed2358a6a69ddce77a3bbc29a129756e181657a83390b7b"

  url "https://github.com/projectbluefin/artwork/releases/latest/download/bazzite-wallpapers.tar.zstd"
  name "bazzite-wallpapers"
  desc "Wallpapers for Bazzite"
  homepage "https://bazzite.gg/"

  livecheck do
    regex(/v?(\d{4}-\d{2}-\d{2})/)
    strategy :github_latest
  end

  destination_dir = "#{Dir.home}/.local/share/backgrounds/bazzite"
  kde_destination_dir = "#{Dir.home}/.local/share/backgrounds/bazzite"

  if File.exist?("/usr/bin/plasmashell")
    Dir.glob("#{staged_path}/images/*").each do |file|
      artifact file, target: "#{kde_destination_dir}/#{File.basename(file)}"
    end
  else
    Dir.glob("#{staged_path}/images/*").each do |file|
      artifact file, target: "#{destination_dir}/#{File.basename(file)}"
    end

    Dir.glob("#{staged_path}/gnome-background-properties/*").each do |file|
      artifact file, target: "#{Dir.home}/.local/share/gnome-background-properties/#{File.basename(file)}"
    end
  end

  preflight do
    Dir.glob("#{staged_path}/**/*.xml").each do |file|
      contents = File.read(file)
      contents.gsub!("~", Dir.home)
      File.write(file, contents)
    end
  end
end
