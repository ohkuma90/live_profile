function cardIs() {
  const card = document.getElementById('card');
  const button = document.getElementById('card-button');
  button.addEventListener('click', function(){
    card.classList.toggle('is-hidden')
  });
}

window.addEventListener('turbo:load', cardIs);