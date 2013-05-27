
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

function maskBodyMaster() {
    $('body').append('<div id="mask"></div>');
    return true;
}
function CloseDetailsVacancysInInterverer() {
    $('#Panel_DetailsVacancys').hide();
    $('#mask').remove();
}

function CloseViewApplicantInInterviewer() {
    $('#PnlViewUpdateApplicant').hide();
    $('#mask').remove();
}

function CloseAddnewVacancys() {
    $('#Panel_ContentAddnew').hide();
    $('#mask').remove();
}

function validateAddnewVacancys() {
    $('input#txtName').css('background-color', '#fff');
    $('input#txtAddress').css('background-color', '#fff');
    $('input#txtsalary').css('background-color', '#fff');
    $('input#txtposition').css('background-color', '#fff');
    $('input#txtnumberpeople').css('background-color', '#fff');
    
    $('input#txtName').css('color', '#555555');
    $('input#txtAddress').css('color', '#555555');
    $('input#txtsalary').css('color', '#555555');
    $('input#txtposition').css('color', '#555555');
    $('input#txtnumberpeople').css('color', '#555555');
    
    if ($('input.rdDate_Start').val() == "") {
        $('input.rdDate_Start').css('color', '#fff');
        $('input.rdDate_Start').css('background-color', '#dc2606');
        return false;
    }
    else if ($('input#txtName').val() == "") {
        $('input#txtName').css('color', '#fff');
        $('input#txtName').css('background-color', '#dc2606');
        return false;
    } else if ($('input#txtAddress').val() == "") {
        $('input#txtAddress').css('color', '#fff');
        $('input#txtAddress').css('background-color', '#dc2606');
        return false;
    }
    else if ($('input#txtsalary').val() == "") {
        $('input#txtsalary').css('color', '#fff');
        $('input#txtsalary').css('background-color', '#dc2606');
        return false;
    }
    else if ($('input#txtposition').val() == "") {
        $('input#txtposition').css('color', '#fff');
        $('input#txtposition').css('background-color', '#dc2606');
        return false;
    }
    else if ($('input#txtnumberpeople').val() == "") {
        $('input#txtnumberpeople').css('color', '#fff');
        $('input#txtnumberpeople').css('background-color', '#dc2606');
        return false;
    }
    return true;
}