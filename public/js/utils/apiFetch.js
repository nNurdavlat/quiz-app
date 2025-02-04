function apiFetch(uri,options={}){
    const baseUrl='http://khasanaf.beget.tech/api',
        token=localStorage.getItem('token');
    const defailtHeaders={};
    if (token){
        defailtHeaders.Authorization=`Bearer ${token}`;
    }
    return fetch(`${baseUrl}${uri}`,{
        ...options,
        headers:{...defailtHeaders,...options.headers},
    })
        .then(async response=>{
            if(!response.ok){
                if(response.status === 401){
                    if(window.location.pathname !== '/login' || window.location.pathname !== '/register'){

                        window.location.href='/login';
                    }
                }
                const error=new Error("HTTP error");
                error.data=await response.json();

                throw error;
            }
            return response.json();
        })

        .catch(async error => {
            throw error;
        })
}
export default apiFetch;






























// function apiFetch(uri, options={}) {
//     const baseURL = 'http://localhost:8080/api',
//         token = localStorage.getItem('token');
//     const defaultHeaders = {};
//     if(token){
//         defaultHeaders.Authorization = `Bearer ${token}`;
//     }
//     return fetch(`${baseURL}${uri}`, {
//         ...options,
//         headers:{...defaultHeaders, ...options.headers},
//
//     })
//         .then(async response=>{
//             if(!response.ok){
//                 if(response.status === 401){
//                     if(window.location.pathname !== '/login' &&  window.location.pathname !== '/register' ){
//                         window.location.href  = '/login'
//                         return;
//                     }
//                 }
//                 const error=new Error("HTTP error");
//                 error.data=await response.json();
//                 throw error;
//             }
//                 return response.json();
//         })
//         .catch(error=>{
//             throw error;
//         });
// }
// export default apiFetch;
