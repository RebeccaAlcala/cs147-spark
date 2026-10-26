// Spark site motion. Everything here is progressive: without JavaScript the page is fully visible.
(function () {
  var reduce = window.matchMedia && window.matchMedia("(prefers-reduced-motion: reduce)").matches;

  // Scroll reveal: fade and rise as sections come into view, staggered within a row.
  var targets = document.querySelectorAll(
    ".section-head, .steps .card, .milestone, .person, .logo-band .wrap > *"
  );
  targets.forEach(function (el) {
    el.classList.add("reveal");
    var siblings = el.parentElement ? Array.prototype.slice.call(el.parentElement.children) : [];
    var i = Math.min(siblings.indexOf(el), 4);
    el.style.setProperty("--d", i * 70 + "ms");
  });

  if (reduce || !("IntersectionObserver" in window)) {
    targets.forEach(function (el) { el.classList.add("in"); });
  } else {
    var io = new IntersectionObserver(function (entries) {
      entries.forEach(function (e) {
        if (e.isIntersecting) { e.target.classList.add("in"); io.unobserve(e.target); }
      });
    }, { threshold: 0.15, rootMargin: "0px 0px -40px 0px" });
    targets.forEach(function (el) { io.observe(el); });
  }

  // Nav picks up a soft shadow once you scroll.
  var nav = document.querySelector(".nav");
  function onScroll() { if (nav) nav.classList.toggle("scrolled", window.scrollY > 8); }
  window.addEventListener("scroll", onScroll, { passive: true });
  onScroll();
})();
