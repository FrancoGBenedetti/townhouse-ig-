/*$(document).ready(function(){
  $('.slider').slider();
});
$(document).ready(function(){
     $('.parallax').parallax();
});*/



$('.count').each(function () {
    $(this).prop('Counter',0).animate({
        Counter: $(this).text()
    }, {
        duration: 4000,
        easing: 'swing',
        step: function (now) {
            $(this).text(Math.ceil(now));
        }
    });
});

let grafico1 = document.getElementById('grafico1').getContext('2d');
let Chart1 = new Chart(grafico1, {
      type: 'pie',
      data: {
        labels:['Left', 'Current'],
        datasets:[{
          label: 'Puertas Vendidas',
          data: [
            60,
            40
          ],
          backgroundColor:[
            '#9e9e9e',
            '#e0e0e0 '
          ]
        }]
      },
      options: {
        legend: {
            // display: false
         },
         tooltips: {
            enabled: false
         }
      }
    });



let grafico2 = document.getElementById('grafico2').getContext('2d');
let Chart2 = new Chart(grafico2, {
      type: 'pie',
      data: {
        labels:['Left', 'Current'],
        datasets:[{
          label: 'Puertas Vendidas',
          data: [
            80,
            20
          ],
          backgroundColor:[
            '#9e9e9e',
            '#e0e0e0 '
          ]
        }]
      },
      options: {
        legend: {
            display: false
         },
         tooltips: {
            enabled: false
         }
      }
    });


let grafico3 = document.getElementById('grafico3').getContext('2d');
let Chart3 = new Chart(grafico3, {
      type: 'pie',
      data: {
        labels:['Left', 'Current'],
        datasets:[{
          label: 'Puertas Vendidas',
          data: [
            55,
            45
          ],
          backgroundColor:[
            '#9e9e9e',
            '#e0e0e0 '
          ]
        }]
      },
      options: {
        legend: {
            display: false
         },
         tooltips: {
            enabled: false
         }
      }
    });

let grafico4 = document.getElementById('grafico4').getContext('2d');
let Chart4 = new Chart(grafico4, {
      type: 'pie',
      data: {
        labels:['Left', 'Current'],
        datasets:[{
          label: 'Puertas Vendidas',
          data: [
            20,
            80
          ],
          backgroundColor:[
            '#9e9e9e',
            '#e0e0e0 '
          ]
        }]
      },
      options: {
        legend: {
            display: false
         },
         tooltips: {
            enabled: false
         }
      }
    });
