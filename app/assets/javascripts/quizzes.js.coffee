# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ($) ->
  $('.quiz-answer').on 'click', (event) ->
    # saving if the answer is correct
    $('.quiz-answer').prop('disabled', true)
    if ($(this).attr('data-correctness') == "1")
      correct = 1
      $(this).addClass('correct bounceIn animated')
      $("button[data-correctness='0']").addClass('not-selected-incorrect')
      mySound = soundManager.createSound({
        url: "/assets/applause-8.mp3"
      })
    else
      correct = 0
      $(this).addClass('incorrect shake animated')
      $("button[data-correctness='1']").addClass('not-selected-correct')
      mySound = soundManager.createSound({
        url: "/assets/vomiting-01.mp3"
      })
    mySound.play()

    # showing next button
    $(this).siblings('a.quiz-forward').show()

    $.ajax({
      url: $('h1').first().attr('data-url'),
      type: 'PUT'
      dataType: 'json',
      data: {answer: correct}
      #    ,
      #      success: (response) ->,
      #      error: ->
    })
