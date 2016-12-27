$(document).ready(function () {
    $('a.edit_station').click(function(e) {
        e.preventDefault();

        var station_id,
            form,
            title;

        station_id = $(this).data('stationId');

        console.log(station_id);

        form = $('#edit_railway_station_' + station_id);
        title = $('#railway_station_title_' + station_id);

        if (!$(this).hasClass('cancel')) {
            $(this).html('Отмена');
            $(this).addClass('cancel');
        } else {
            $(this).html('Редактировать');
            $(this).removeClass('cancel');
        }

        form.toggle();
        title.toggle();
    });
});