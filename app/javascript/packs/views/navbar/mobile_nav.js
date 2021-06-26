/**
 * @prop {Show/Hide Navbars}
 */
const fullScreenNav = document.getElementById('large-navbar');
const mobileNav = document.getElementById('mobile-navbar');

// Setup the media query
const mediumAndDown = window.matchMedia('(max-width: 992px)');

function mobileStyleChanges(width) {
  if (width.matches) {
    // If media query matches
    fullScreenNav.style.display = 'none';
    mobileNav.style.display = 'flex';
  } else {
    mobileNav.style.display = 'none';
    fullScreenNav.style.display = 'flex';
  }
}

// Call listener function at run time
mobileStyleChanges(mediumAndDown);
// Attach listener function on state changes
mediumAndDown.addEventListener('change', mobileStyleChanges);

/**
 * @prop {NAV CLOSE AND MENU LINK HANDLERS}
 *
 *
 */

const topMenu = document.getElementById('top-menu');
const navLinks = topMenu.children[1];

function openNav(e) {
  e.preventDefault();
  navLinks.style.visibility = 'visible';
  topMenu.style.height = '100%';
}

function closeNav(e) {
  e.preventDefault();

  navLinks.style.visibility = 'hidden';
  topMenu.style.height = '0%';
}

// Event Listeners
const mobileNavMenu = document.querySelector('.btn-nav-menu');
const mobileCloseBtn = document.querySelector('.btn-close');

mobileNavMenu.addEventListener('click', openNav);
mobileCloseBtn.addEventListener('click', closeNav);
