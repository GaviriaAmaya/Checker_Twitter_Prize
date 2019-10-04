$(document).ready(function () {
  alert("hola");
  $('INPUT#btn_check').click(function () {
    console.log("hola");
    const apiKey = $('INPUT#api_key').val();
    const url = $('INPUT#url').val();
    const email = $('INPUT#email').val();
    const password = $('INPUT#password').val();
    params =  {"api_key": "e3a127d130628e01332f2ee93b2bf4c3", "email": "732@holbertonschool.com", "password": "Stratovarius2019", "scope": "checker"}
    console.log(params);
    $('DIV#test').empty();
    /*$.post("https://intranet.hbtn.io/users/auth_token.json", JSON.stringify(params), function (data) {
    console.log(data);
    }, "json");*/
    $.ajax({
      type: 'POST',
      url: 'https://intranet.hbtn.io/users/auth_token.json/',
      contentType: 'application/json',
      header: { "Origin": "181.143.182.218" },
      cors: true,
      data: JSON.stringify(params),
      success: function (data) {
	console.log(data);
        $('DIV#test').text(data.full_name);
      }
    });
  });
});

