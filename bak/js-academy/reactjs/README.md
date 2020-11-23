# ReactJS

## Build single page with ReactJS

### Build a simple auth module

> Todo list

- Install
- Define folder structure
- Stylesheets: sass, css framework
- Define app routes
- Group layouts : auth, dashboard(update profile, login history)


> Procedure

1. Install

```bash
yarn create react-app build-single-app-with-reactjs
```

2. Folder structure

```json
	"src": {
		"components": [], // shared components
		"containers": [], // app containers
		"services": [], // api connect
		"store": [], // redux
		"helpers": [], // utilities
		"styles": [], // stylesheets
	}
```

3. Stylesheets

```bash
yarn add node-sass bulma
```

4. ENV

```bash
SASS_PATH=node_modules:src

REACT_APP_* : environment variables

REACT_APP_WEBSITE_NAME=REACTJS THE RIGHT WAY
REACT_APP_WEBSITE_URL=http://localhost:3000
REACT_APP_API_URL=http://localhost:1337
```

5. Define App Routes

```bash
yarn add react-router-dom
```