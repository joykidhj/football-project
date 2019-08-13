const CONTAINER = {
  HEADER: `<div class="container_header">
  <div class="container_absolute_bottom">
  <div class="logo">
    <h1>this is logo</h1>
  </div>

  <div class="navbar">
    <a class="navbar_menu" href="#">
      menu1
      </a>
    <a href="#">menu2</a>
  </div>
</div>
  <div class="conatiner_header_menu">
    <a class="header_menu" href="#">
      <small>some menu</small>
    </a>
    <a class="header_menu" href="#">
      <small>log-in</small>
    </a>
  </div>
</div >`,
  BODY: document.querySelector(".container_body"),
  FOOTER: `<div class="container_footer">
  <div class="footer_contents" />
</div>`
};

function initPage() {
  CONTAINER.BODY.insertAdjacentHTML("beforebegin", CONTAINER.HEADER);
  CONTAINER.BODY.insertAdjacentHTML("afterend", CONTAINER.FOOTER);
}
