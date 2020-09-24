$(document).on("turbolinks:load", function(){

    $(function(){

        $("#js-contact-submit").click(function(){
            var message = "お問い合わせ内容を送信しますか？\n\n※ メールアドレスの誤入力にご注意ください ※"
            var choice = confirm(message);

            if (choice == true){
                $(".contact-submit-hidden")[0].click();
            }
        })

    });

})