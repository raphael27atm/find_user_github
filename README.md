### Objetivo da Aplicação
Buscar usuários do GitHub usando https://developer.github.com/v3/.

### Autenticação
Todas as requets necessitam uma API_KEY, esta chave será disponibilizada pelos administradores da API.

### Erros

Erros são sinalizados por código de status HTTP e uma resposta JSON explicando a
causa para o erro em uma mensagem legível.

### HTTP Status

códigos retornados pela API:

* 200 OK
* 201 Created: retornado ao criar uma nova entrada
* 400 Bad Request: retornado quando o request está incorreta ou não tem parametros válidos
* 401 Unauthorized: retornado quando a request não está autenticada
* 404 Not Found
* 500 Internal Server Error

### Response

Todas as mensagens de erro retornam uma resposta JSON com uma mensagem legível. Por exemplo:

    { "message": "You is not authorized" }

### Usuários Git

##### Campos existentes
* name (obrigatório)

##### Requests

##### GET /users/
Retorna usuários de acordo com o parametro

##### Exemplo de request

    $ curl https://findusergithub.herokuapp.com/api/v1/users
        --get
        -d "api_key=982iiHsdfjjk3II8988" \
        -d "name=raphael27atm" \


##### Exemplo de Resposta

      [
        {
          "login": "raphael27atm",
          "id": 1651518,
          "avatar_url": "https://avatars.githubusercontent.com/u/1651518?v=3",
          "gravatar_id": "",
          "url": "https://api.github.com/users/raphael27atm",
          "html_url": "https://github.com/raphael27atm",
          "followers_url": "https://api.github.com/users/raphael27atm/followers",
          "following_url": "https://api.github.com/users/raphael27atm/following{/other_user}",
          "gists_url": "https://api.github.com/users/raphael27atm/gists{/gist_id}",
          "starred_url": "https://api.github.com/users/raphael27atm/starred{/owner}{/repo}",
          "subscriptions_url": "https://api.github.com/users/raphael27atm/subscriptions",
          "organizations_url": "https://api.github.com/users/raphael27atm/orgs",
          "repos_url": "https://api.github.com/users/raphael27atm/repos",
          "events_url": "https://api.github.com/users/raphael27atm/events{/privacy}",
          "received_events_url": "https://api.github.com/users/raphael27atm/received_events",
          "type": "User",
          "site_admin": false,
          "score": 46.37241
        }
      ]

### User Git Repositórios

##### Campos existentes
* name (obrigatório)

##### Requests

##### GET /users/{name}
Retorna o usuário

##### Exemplo de request

    $ curl https://findusergithub.herokuapp.com/api/v1/users/raphael27atm
        --get
        -d "api_key=982iiHsdfjjk3II8988" \


##### Exemplo de Resposta

      [
        {
          "id": 50132089,
          "name": "agenda-contatos",
          "full_name": "raphael27atm/agenda-contatos",
          "owner": {
          "login": "raphael27atm",
          "id": 1651518,
          "avatar_url": "https://avatars.githubusercontent.com/u/1651518?v=3",
          "gravatar_id": "",
          "url": "https://api.github.com/users/raphael27atm",
          "html_url": "https://github.com/raphael27atm",
          "followers_url": "https://api.github.com/users/raphael27atm/followers",
          "following_url": "https://api.github.com/users/raphael27atm/following{/other_user}",
          "gists_url": "https://api.github.com/users/raphael27atm/gists{/gist_id}",
          "starred_url": "https://api.github.com/users/raphael27atm/starred{/owner}{/repo}",
          "subscriptions_url": "https://api.github.com/users/raphael27atm/subscriptions",
          "organizations_url": "https://api.github.com/users/raphael27atm/orgs",
          "repos_url": "https://api.github.com/users/raphael27atm/repos",
          "events_url": "https://api.github.com/users/raphael27atm/events{/privacy}",
          "received_events_url": "https://api.github.com/users/raphael27atm/received_events",
          "type": "User",
          "site_admin": false
        },...
      ]

### Test Rspec

##### comando
* rspec
