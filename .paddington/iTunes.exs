app "iTunes", :line

command "Activate" do
  osascript "activate"
end

command "Previous track" do
  osascript "play previous track"
end

command "Play/Pause" do
  osascript "playpause"
end

command "Next track" do
  osascript "play next track"
end
