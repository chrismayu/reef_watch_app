# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  Morris.Line
    element: 'watchers_chart'
    data: $('#watchers_chart').data('watchers')
    xkey: 'created_at'
    ykeys: ['temp', 'ambient_temp']
    labels: ['Main Tank Temperature','House Temperature']
    units: '°f'