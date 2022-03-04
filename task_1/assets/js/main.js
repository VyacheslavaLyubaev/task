$(document).mouseleave(function(e){
    if (e.clientY < 10) {
        $(".bg-popup").fadeIn("fast");
        $(".form").fadeIn("fast");
    }
});

$(".bg-popup").click(function(e){
    $(".form").remove();
    $(".bg-popup").remove();
})
$(".btn").click(function(){
    let name = strip_tags($("#name").val().trim());
    let phone = strip_tags($("#phone").val().trim());
    if (name == 0 && phone == 0)
    {
        $(".form").remove();
        $(".bg-popup").remove();
    }
})
