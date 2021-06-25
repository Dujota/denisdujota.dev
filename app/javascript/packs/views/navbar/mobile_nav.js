// Setup the media query
const mediumAndDown = window.matchMedia('(max-width: 992px)');
const fullScreenNav = document.getElementById('large-navbar');
const mobileNav = document.getElementById('mobile-navbar');

function mobileStyleChanges(width) {
  if (width.matches) {
    // If media query matches
    mobileNav.style.display = 'flex';
    fullScreenNav.style.display = 'none';
    console.log('matches');
  } else {
    mobileNav.style.display = 'none';
    fullScreenNav.style.display = 'flex';
    console.log('Large and up');
  }
}

// Call listener function at run time
mobileStyleChanges(mediumAndDown);
// Attach listener function on state changes
mediumAndDown.addEventListener('change', mobileStyleChanges);

// Hanle the hamburger icon and close click
function openNav(e) {
  e.preventDefault();

  document.getElementById('myNav').style.width = '100%';
}

function closeNav(e) {
  e.preventDefault();
  document.getElementById('myNav').style.width = '0%';
}
