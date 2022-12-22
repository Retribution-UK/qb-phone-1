// Functions

function formatPhoneNumber(phoneNumberString) {
    var cleaned = ('' + phoneNumberString).replace(/\D/g, '');
    var match = cleaned.match(/^(\d{3})(\d{3})(\d{4})$/);
    if (match) {
      return '(' + match[1] + ') ' + match[2] + '-' + match[3];
    }
    return phoneNumberString;
}

SetupRecovery = function(data) {
    $(".recoverys-list").html("");
    $.each(data, function(job, jobData) {
        $(".recoverys-list").append(`<h1 style="font-size:1.64vh; padding:1.02vh; color:#fff; margin-top:0; width:100%; display:block; background-color: #782525;">Available Recovery Drivers</h1>`);
        $.each(jobData.Players, function(i, player) {
            $(".recoverys-list").append(`<div class="recovery-list" id=${player.Phone}> <div class="recovery-list-fullname">${player.Name}</div> <div class="recovery-list-phone">${formatPhoneNumber(player.Phone)}</div> <div class="recovery-list-call"><i class="fas fa-phone"></i></div></div>`);
        });

        if (jobData.Players.length === 0) {
            $(".recoverys-list").append('<p class="norecovery">None Available! <i class="fas fa-frown" id="recovery-frown"></i></p>');
        }
        $(".recoverys-list").append("<br>");
    });
}

// On Click

$(document).on('click', '.recovery-list-call', function(e){
    e.preventDefault();
    var Number = $(this).parent().attr('id');
    if (Number != undefined){
        var InputNum = Number;

        if (InputNum != ""){
            cData = {
                number: InputNum,
                name: InputNum,
            }
            $.post('https://qb-phone/CallContact', JSON.stringify({
                ContactData: cData,
                Anonymous: QB.Phone.Data.AnonymousCall,
            }), function(status){
                if (cData.number !== QB.Phone.Data.PlayerData.charinfo.phone) {
                    if (status.IsOnline) {
                        if (status.CanCall) {
                            if (!status.InCall) {
                                $('.phone-new-box-body').fadeOut(350);
                                ClearInputNew()
                                $(".phone-call-outgoing").css({"display":"none"});
                                $(".phone-call-incoming").css({"display":"none"});
                                $(".phone-call-ongoing").css({"display":"none"});
                                $(".phone-call-outgoing-caller").html(cData.name);
                                QB.Phone.Functions.HeaderTextColor("white", 400);
                                QB.Phone.Animations.TopSlideUp('.phone-application-container', 400, -160);
                                setTimeout(function(){
                                    $(".phone-app").css({"display":"none"});
                                    QB.Phone.Animations.TopSlideDown('.phone-application-container', 400, -160);
                                    QB.Phone.Functions.ToggleApp("phone-call", "block");
                                    $(".phone-currentcall-container").css({"display":"block"});
                                    $("#incoming-answer").css({"display":"none"});
                                }, 450);
        
                                CallData.name = cData.name;
                                CallData.number = cData.number;
        
                                QB.Phone.Data.currentApplication = "phone-call";
                            } else {
                                QB.Phone.Notifications.Add("fas fa-phone", "Phone", "You're already in a call!");
                            }
                        } else {
                            QB.Phone.Notifications.Add("fas fa-phone", "Phone", "This person is busy!");
                        }
                    } else {
                        QB.Phone.Notifications.Add("fas fa-phone", "Phone", "This person is not available!");
                    }
                } else {
                    QB.Phone.Notifications.Add("fas fa-phone", "Phone", "You can't call yourself!");
                }
            });
        } 
    }
})
