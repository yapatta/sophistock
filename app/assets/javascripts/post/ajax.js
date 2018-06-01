ajax = () => {
    $.ajax({
        url: '/posts/ajax',
        type: 'GET',
        dataType: 'json',
        success: function(data){
            console.log(data['content']);
        },
        error: function(){
            console.log('error');
        }
    })
}