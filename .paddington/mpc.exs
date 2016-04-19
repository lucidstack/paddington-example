app "MPC", :line
osx "iTerm2"

command "Activate" do
  osascript "activate"

  if tmux.current_session == "music" do
    tmux.switch
  else
    tmux.switch "music"
  end
end

command "Previous track" do
  mpc.previous
end

command "Play/Pause" do
  mpc.playpause

  if mpc.playing? do
    led.green
  end
end

command "Next track" do
  mpc.next
end

command "Open in browser" do
  open "http://localhost:6680/spotmop"
end
