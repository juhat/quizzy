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
    else
      correct = 0
      $(this).addClass('incorrect shake animated')
      $("button[data-correctness='1']").addClass('not-selected-correct')

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
