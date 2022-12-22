export default {
    beforeMount: function (el, binding, vnode) {
      binding.event = function (event) {
        event.stopPropagation();
        if (!(el === event.target || el.contains(event.target))) {
          if (binding.value instanceof Function) {
            binding.value(event)
          }
        }
      }
      document.body.addEventListener('click', binding.event)
    },
    unmounted: function (el, binding, vnode) {
      document.body.removeEventListener('click', binding.event)
    }
  }
