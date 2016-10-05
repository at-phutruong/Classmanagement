jQuery ->
  $('.datepicker').datepicker({
    'dateFormat': 'DD, d MM, yy'
    });
  
  $('.timepicker').timepicker({
    'scrollDefault': 'now'
    'minTime': '7:00am',
    'maxTime': '9:00pm',
    'step': 30;
    'disableTimeRanges': [
        ['11:30am', '13:00pm'],
        ['3am', '4:01am']
    ]
    });
