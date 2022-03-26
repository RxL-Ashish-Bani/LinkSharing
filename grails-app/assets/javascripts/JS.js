$(document).ready(function(){
     //Handles menu drop down
     $('.dropdown-menu').find('form').click(function (e) {
          e.stopPropagation();
     });
});

window.$ = window.jquery = require('./node_modules/jquery');
window.dt = require('./node_modules/datatables.net')();
window.$('#table_id').DataTable();

// $(document).ready( function () {
//      $('#table_id').DataTable();
// } );

// $('#users_dt tfoot th').each( function() {
//      var title = $(this).text();
//      if (title == 'Extension' || title == 'Hired')
//           $(this).html('<input type="text" size="5" placeholder="' + title + '?" />');
//      else
//           $(this).html('<input type="text" size="15" placeholder="' + title + '?" />');
// });

var table = $('#users_dt').DataTable( {
     "scrollY": 500,
     "deferRender": true,
     "scroller": true,
     "dom": "Brtip",
     "processing": true,
     "serverSide": true,
     "ajax": {
          "url": "${createLink(controller: 'employee', action: 'browserLister')}",
          "type": "POST",
     },
     "columns": [
          { "data": "id" },
          { "data": "userName" },
          { "data": "email" },
          { "data": "firstName" },
          { "data": "lastName" },
          { "data": "active" },
          { "data": "manage" }
     ]
});

table.columns().every(function() {
     var that = this;
     $('input', this.footer()).on('keyup change', function (e) {
          if (that.search() != this.value && 8 < e.keyCode && e.keyCode < 32)
               that.search(this.value).draw();
     });
});

