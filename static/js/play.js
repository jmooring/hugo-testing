var audio = document.getElementById("aud");
var button = document.getElementById("play");
play.textContent = "play";

function Play() {
  if (audio.paused) {
    audio.play();
    play.textContent = "pause";
  } else {
    audio.pause();
    play.textContent = "play";
  }
}
