$(document).ready(function () {
    var connection = new signalR.HubConnectionBuilder().withUrl('/chathub').build();

    connection.start();

    connection.on('online', function (id) {
        let span = $(`#${id} span`);
        span.removeClass('bg-secondary');
        span.addClass('bg-success');
    })

    connection.on('ofline', function (id) {
        let span = $(`#${id} span`);
        span.removeClass('bg-success');
        span.addClass('bg-secondary');
    })

    connection.on('orderaccepted', function () {
        alert('Sifarisiniz Tesdiqlendi');
    })

    $(document).on('click', '.userItem', function () {
        let userId = $(this).attr('id');
        let fullName = $(this).data("name");

        $('.userName').html(fullName);
        $('#userId').val(userId);

        fetch('/home/GetMessages?userId=' + userId)
            .then(res => res.text())
            .then(data => {
                $('.messageContainer').html(data);
            })

    })

    $(document).on('click', '.sendMessageBtn', function (e) {
        e.preventDefault();
        let buzzer = $('#buzzer')[0];
        buzzer.play();
        let userId = $('#userId').val();
        let message = $('#message').val();
        $('#message').val('');
        connection.invoke("SendMessage", userId, message);

        let listItem = `<li class="list-group-item text-right">${message}</li>`
        $('.messageContainer').append(listItem);
    })

    connection.on('privatemessage', function (msg, senderId) {
        let userId = $('#userId').val();
        if (userId == senderId) {
            let listItem = `<li class="list-group-item">${msg}</li>`;
            $('.messageContainer').append(listItem);

            let buzzer = $('#buzzer1')[0];
            buzzer.play();
        }
    })
})