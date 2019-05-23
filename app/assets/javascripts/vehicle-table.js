
var table;
$(document).on('turbolinks:load', function() {
    Turbolinks.clearCache();
    table = $("#table").DataTable({
        "responsive": true,
        "order": [0, 'asc'],
        "paging": true,
        "searching": true,
        "ordering": true,
        "info": true,
        "autoWidth": false,
        "columnDefs": [
                { targets: 'no-sort', orderable: false }
            ],
        "language": {
            "sProcessing":     "Procesando...",
            "sLengthMenu":     "Mostrar _MENU_ registros",
            "sZeroRecords":    "No se encontraron resultados",
            "sEmptyTable":     "Ningún dato disponible en esta tabla",
            "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
            "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix":    "",
            "sSearch":         "Buscar:",
            "sUrl":            "",
            "sInfoThousands":  ",",
            "sLoadingRecords": "Cargando...",
            "paginate": {
                "previous": "<i class=\"fa fa-backward\"></i>",
                "next": "<i class=\"fa fa-forward\"></i>",
                "first": "<i class=\"fa fa-step-backward\"></i>",
                "last": "<i class=\"fa fa-step-forward\"></i>"
            },
            "oAria": {
                "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                "sSortDescending": ": Activar para ordenar la columna de manera descendente"
            }
        },
    });
});