import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Horror", "Action", "Classic", "Superhero"],
    typeSpeed: 50,
    showCursor: false,
    backDelay: 1400,
    loop: true
  });
}



export { loadDynamicBannerText };
