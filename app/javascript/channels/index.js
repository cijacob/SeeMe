// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

document.addEventListener("DOMContentLoaded", function(event) {
  const link = document.querySelector('.title_link'); 
  const content = document.querySelector('.section')

  link.addEventListener('click', function(){
    console.log('coucou')
    content.classList.toggle('active')
  })

});

