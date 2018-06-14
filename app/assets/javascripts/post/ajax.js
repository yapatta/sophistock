function appendPosts(page) {
    $.ajax({
        url: `/posts/ajax?page=${page}`,
        type: 'GET',
        dataType: 'json',
        success: function(data){
            console.log(data);
            data.map(post => $('.posts').append(`
                <li>
                    <h3>${post.user.name}</h3>
                    <h2>${post.title}</h2>
                </li>
            `))
        },
        error: ()=>{console.log('error')}
    })
}