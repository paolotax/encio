# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


# Serata = (item) ->
#   console.log item
#   this.titolo = ko.observable(item.titolo)
#   this.data   = ko.observable(item.data)
# 
# SerataListViewModel = () ->
#   
#   console.log "CIao"
#   self = this
#   self.serate = ko.observableArray([])
# 
#   $.getJSON "/serate", (allData) ->
# 
#     mappedSerate = $.map allData, (item) ->
#       return new Serata(item)
#     
#     # console.log mappedSerate
#     
#     self.serate(mappedSerate)
#     
#     console.log self.serate
# 
# jQuery ->
#   ko.applyBindings(new SerataListViewModel()); 
  
