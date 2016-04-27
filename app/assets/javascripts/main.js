/**
 * Created by knet on 22/04/16.
 */
$(function(){
    //if($("#category_id_hidden").val() != undefined)
    //    loadSubcategories();
    //if($("#category_id_hidden").val()!=""){
    //    $("#category_id").val($("#category_id_hidden").val()).trigger("liszt:updated");
    //}

    //$("#category_id").on("change", function(){
    //    loadSubcategories();
    //});

    //$("#search").on("click", function(){
    //    search();
    //});


    //function loadSubcategories(){
    //    var id = $("#category_id").val();
    //    $.ajax({
    //        url: "categories/get_subcategories/"+id,
    //        dataType: 'json',
    //        success: function (response) {
    //            $("#subcategory_id").find('option').remove();
    //            for(i=0;i<response.length;i++){
    //                $("#subcategory_id").append("<option value='"+response[i][1]+"'>"+response[i][0]+"</option>");
    //            }
    //        },
    //        error: function (response) {
    //            console.log(response);
    //        }
    //    });
    //}

    //function search(){
    //    var text = $("#text").val();
    //    var pi = $("#price-s").val();
    //    var pe = $("#price-e").val();
    //    $.ajax({
    //        url: "announces/announces_search",
    //        data:{text:text, pi:pi, pe:pe},
    //        dataType: 'json',
    //        type: 'POST',
    //        success: function (response) {
    //            console.log(response);
    //        },
    //        error: function (response) {
    //            console.log(response);
    //        }
    //    });
    //}
});