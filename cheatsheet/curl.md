# CURL CheatSheet

## General


[HTML version here](https://curl.github.io/curl-cheat-sheet/http-sheet.html)

| Verbose              | Hide progress           | extra info        | Write output     | Timeout
|----------------------|-------------------------|-------------------|------------------|--------------
| -v                   | -s                      | -w "format"       | -O               | -m <secs>
| --trace-ascii <file> |                         |                   | -o <file>        |
| **POST**             | **multipart**           | **PUT**           | **HEAD**         | **custom**
| -d "string"          | -F name=value           | -T <file>         | -I               | -X "METHOD"
| -d @file             | -F name=@file           |                   |                  |
| **Basic auth**       | **read cookies**        | **write cookies** | **send cookies** | **user-agent**
| -u user:password     | -b <file>               | -c <file>         | -b "c=1; d=2"    | -A "string"
| **Use proxy**        | **Headers, add/remove** | **follow redirs** | **gzip**         | **insecure**
| -x <host:port>       | -H "name: value"        | -L                | --compressed     | -k
|                      | -H "name:"              |                   |                  |


## Common usecases

### Test your API with curl

1. GET

> curl -v http://example.ezapi.site
> curl GET http://example.ezapi.site
> curl -X GET http://example.ezapi.site

2. HEAD

> curl -I http://example.ezapi.site

3. OPTIONS

> curl -I -X OPTIONS http://example.ezapi.site

4. POST

> curl -I -X POST http://example.ezapi.site -F email=example@sonnm.com


## Refs

- https://devhints.io/curl
- https://ec.haxx.se/http/http-cheatsheet