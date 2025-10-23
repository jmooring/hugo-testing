import * as bootstrap from 'js/bootstrap';

const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]');
[...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl));
