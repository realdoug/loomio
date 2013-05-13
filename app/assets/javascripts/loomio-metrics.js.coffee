url = "http://localhost:8000/loomio-metrics.js"

# Inspiration found at http://friendlybit.com/js/lazy-loading-asyncronous-javascript/
(->
  async_load = ->
    s = document.createElement("script")
    s.type = "text/javascript"
    s.async = true
    s.src = url
    x = document.getElementsByTagName("script")[0]
    x.parentNode.insertBefore s, x
  if window.attachEvent
    window.attachEvent "onload", async_load
  else
    window.addEventListener "load", async_load, false
)()


