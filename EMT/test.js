const open = document.getElementById('open');
const modal_container = document.getElementById('modal_container');
const closer = document.getElementById('close');

open.addEventListener('click', () => {
    modal_container.classList.add('show');
});
closer.addEventListener('click', () => {
    modal_container.classList.remove('show');
});

