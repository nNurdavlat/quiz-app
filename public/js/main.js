function login(){
    let form = document.getElementById('form'),
        formDate = new FormData(form);

    fetch('http://localhost:8080/api/login', {
        method: 'POST',
        body: formDate,
    })

        .then(function(response){

        if(response.ok){
            return response.json();
        }

        return Promise.reject(response);
    })

        .then(function(data){
            localStorage.setItem('token', data.token);
            console.log(localStorage.getItem('token'));
        })
        .catch(function(error){
            console.log(error);
        });
}

function register(){
    let form = document.getElementById('form'), // Auth/register.php  form ni idsidagi nom
        formDate = new FormData(form);

    fetch('http://localhost:8080/api/register', {
        method: 'POST',
        body: formDate,
    })

    .then(function(response){

        if(response.ok){
            return response.json();
        }

        return Promise.reject(response);
    })

    .then(function(data){
        console.log(data);
    })
    .catch(function(error){
        console.log(error);
    });
}
