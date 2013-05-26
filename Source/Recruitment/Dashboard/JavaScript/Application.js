
// To Store
$(function () {
    if ($.session.get('menuActive') == null) {
        $.session.set('menuActive', 'home');
        $('ul.menuLeft li a#home').addClass('active');
    } else {
        var idMenuActive = $.session.get('menuActive');
        $('ul.menuLeft li a#' + idMenuActive).addClass('active');
    }
});


// To Read
$(function () {
    $('ul.menuLeft li a').click(function () {
        $.session.set('menuActive', this.id);
    });
});

function ViewDetailsVacancysInInterViewer() {
    $('body').append('<div id="mask"></div>');
}

function ViewApplicantInInterViewer() {
    $('body').append('<div id="mask"></div>');
}

function CloseDetailsVacancysInInterverer() {
    $('#Panel_DetailsVacancys').hide();
    $('#mask').remove();
}

function CloseViewApplicantInInterviewer() {
    $('#PnlViewUpdateApplicant').hide();
    $('#mask').remove();
}