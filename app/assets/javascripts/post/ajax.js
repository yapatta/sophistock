function appendPosts(page) {
    $.ajax({
        url: `/posts/ajax?page=${page}`,
        type: 'GET',
        dataType: 'json',
        success: function(data){
            data.map(post => $('.posts').append(`
                <li>
                    <h2>${post.title}</h2>
                </li>
            `))
        },
        error: ()=>{console.log('error')}
    })
}