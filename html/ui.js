$(function () {
    function display(bool) {
        if (bool) {
            $("#by").show()
        } else {
            $("#by").hide()
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })

    $("#submit").click(function () {
        $.post('http://nz_identity/main', JSON.stringify({
            msg: $("#name").val(),
            date: $("#date").val(),
            height: $("#height").val(),
            place: $("#place").val(),
            sex: $("#sex").val(),
        }));
        return;
    })
})