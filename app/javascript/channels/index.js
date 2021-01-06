// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

document.addEventListener("DOMContentLoaded", function(event) {

  const links = document.querySelectorAll('.link_tab_container'); 
  const linksContainer = document.querySelector('.tab_container'); 
  const contents = document.querySelectorAll('.section__content'); 
  

  linksContainer.addEventListener('click', function(e){
    clicked = e.target.closest('.link_tab_container');
    
    if(!clicked) return
    links.forEach( l => l.classList.remove('active'))
    contents.forEach( c => c.classList.remove('section_content__active'));

    clicked.classList.add('active')

    document
    .querySelector(`.section__content${clicked.dataset.tab}`)
    .classList.add('section_content__active');
  })

});

