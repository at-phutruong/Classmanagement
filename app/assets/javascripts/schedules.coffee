jQuery ->
  $('.datepicker').datepicker({
    'dateFormat': 'DD, d MM, yy'
    });

  $('.timepicker').timepicker({
    'scrollbar': true,
    'scrollDefault': 'now',
    'timeFormat': 'H:i'
    'minTime': '7:00',
    'maxTime': '17:30',
    'orientation': 't',
    'step': 30;
    'dropdown': true
    'disableTimeRanges': [
        ['11:30', '13:00']
    ]
    });
  console.log $('#end_time').timepicker('getTime');
