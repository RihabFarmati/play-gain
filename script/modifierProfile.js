$(document).ready(function () {
    $('#modifier').click(function () {
        var nom = $("#nom");
        var prenom = $("#prenom");
        var email = $("#email");
        var nais = $("#nais");
        var psw = $("#psw");
        $.ajax({
            url: 'controller/user.php',
            data: {op: 'mo',nom :nom.val(),prenom: prenom.val(),email:email.val(),psw:psw.val(),nais:nais.val()},
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
               // Swal.fire('Play&Gain','Vous données sont bien Changée','succes');
                Swal.fire({
                    title: 'Play&Gain',
                    text: 'Vous données sont bien Changée.',
                    timer: 10000
                  })
                
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(textStatus);
            }
    }); });
    
})