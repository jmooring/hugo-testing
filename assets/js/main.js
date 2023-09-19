// Tooltips

document.addEventListener('DOMContentLoaded', function() {
  var els = document.getElementsByClassName('has-tooltip');
  if (els) {
    [...els].forEach(el => {
      var tooltip = document.createElement('span');
      tooltip.style.display='none';
      tooltip.classList.add('tooltip');
      tooltip.innerHTML = (document.getElementById('tooltip-'+el.dataset.tooltipId)).innerHTML;
      el.appendChild(tooltip);
      el.addEventListener('mouseover', function() {
        tooltip.style.display='inherit'
      }, false);
      el.addEventListener('mouseout', function() {
        tooltip.style.display='none'
      }, false);
    });
  }
});
