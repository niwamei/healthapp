import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import interactionPlugin from '@fullcalendar/interaction';
import { $ } from '@rails/ujs';

document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new Calendar(calendarEl, {
    plugins: [ dayGridPlugin, interactionPlugin ],
    locale: 'ja',
    timeZone: 'Asia/Tokyo',
    firstDay: 1,
    headerToolbar: {
      start: 'prevYear nextYear',
      center: 'title',
      end: 'today prev,next',
    },
    buttonText: {
       today: '今日'
    }, 
    height: "auto",
    
    selectable: true,
    events: [
      {
        title: 'Event1',
        start: '2021-07-14'
      },
      {
        title: 'Event2',
        start: '2021-07-19',
        end: '2021-07-21',
      }
    ],
    dateClick: function(date, jsEvent, view) {
      $('#modalid').modal('show');
    }
  });
  calendar.render();
});