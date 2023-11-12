export function openNav() {
  document.getElementById("mySidenav").style.width = "450px";
  document.body.style.overflow = "hidden";
  console.log('foo')
}

export function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.body.style.overflow = "auto";
  document.getElementById("overlay").style.display = "none"
}
