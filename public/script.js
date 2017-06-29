var blog = {

initialize: function() {
    console.log("==initialize==");
    blog.activateUserInterface();
    blog.deleteProfile();
},

activateUserInterface: function() {
    $('#register_submit').on('click', function() {
        $('.login_form').slideUp();
        $('#register_form').css('visibility', 'visible');
        $('#register_area').css('height', '0');
        $('#register_submit').css('visibility', 'hidden');
        $('#register_text').css('visibility', 'hidden');
        $('#h1').css('visibility', 'hidden');
    });
},

deleteProfile: function() {
    $('#deleteuser').on('click', function() {
        alert("Are you sure you want to delete your profile?");
    });
}

}
blog.initialize();
