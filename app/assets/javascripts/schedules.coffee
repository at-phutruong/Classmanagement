jQuery ->
  $('.datepicker').datepicker({
    'dateFormat': 'DD, d MM, yy'
    });

  $('.timepicker').timepicker({
    'timeFormat': 'H:i'
    'scrollDefault': 'now'
    'minTime': '7:00',
    'maxTime': '17:00',
    'step': 30;
    'disableTimeRanges': [
        ['11:30', '13:00'],
    ]
    });
