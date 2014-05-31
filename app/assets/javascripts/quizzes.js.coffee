# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ($) ->
  $('.quiz-answer').on 'click', (event) ->
    # saving if the answer is correct
    if ($(this).attr('data-correctness') == "1")
      correct = 1
      mySound = soundManager.createSound({
        url: "/assets/applause-8.mp3"
      })
    else
      correct = 0
      mySound = soundManager.createSound({
        url: "/assets/vomiting-01.mp3"
      })
    mySound.play()

    # displaying answer colors and disable them
    $('.quiz-answer').each (num) ->
      element = $( $('.quiz-answer')[num] )
      if element.attr('data-correctness') == "1"
        element.addClass('correct')
      else
        element.addClass('incorrect')
    $('.quiz-answer').prop('disabled', true)

    # showing next button
    $(this).siblings('a.quiz-forward').show()

    $.ajax({
      url: $('h1').first().attr('data-url'),
      type: 'POST'
      dataType: 'json',
      data: {answer: correct},
      success: (response) -> ,
      error: ->
    })
