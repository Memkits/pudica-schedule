// Exit ghosts live outside Respo's mount tree so keyed DOM coordinates stay valid.
export function animateTaskExit(element) {
  const document = element.ownerDocument;
  const rect = element.getBoundingClientRect();
  const opacity = document.defaultView.getComputedStyle(element).opacity;
  const layer = document.createElement('div');
  layer.dataset.taskExit = '';
  layer.setAttribute('aria-hidden', 'true');
  layer.inert = true;
  Object.assign(layer.style, {
    position: 'fixed', left: `${rect.left}px`, top: `${rect.top}px`,
    width: `${rect.width}px`, height: `${rect.height}px`,
    pointerEvents: 'none', zIndex: '1000',
  });

  const ghost = element.cloneNode(true);
  // A ghost must not compete with live inputs in focus queries or inspections.
  for (const node of [ghost, ...ghost.querySelectorAll('[id], [data-comp]')]) {
    node.removeAttribute('id');
    node.removeAttribute('data-comp');
  }
  Object.assign(ghost.style, {
    position: 'absolute', left: '0px', top: '0px', right: 'auto', bottom: 'auto',
    width: `${rect.width}px`, height: `${rect.height}px`, boxSizing: 'border-box',
    margin: '0px', transform: 'none', opacity, transition: 'none',
    pointerEvents: 'none',
  });
  layer.appendChild(ghost);
  document.body.appendChild(layer);
  const animation = ghost.animate([
    { opacity, transform: 'translateX(0px)' },
    { opacity: 0, transform: 'translateX(8px)' },
  ], { duration: 300, easing: 'ease', fill: 'forwards' });
  const remove = () => layer.remove();
  animation.finished.then(remove, remove);
}
