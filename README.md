<h1 align="center">Package Test Ground</h1>
<h3 align="center">A repo for testing packages that export CJS & ESM modules in a variety of build configurations</h3>

<br>

## Background

ESM & CJS is _confusing_ to say the least. You have to cater for the entire ecosystem that all seem to have a different interpretation of what to do to support it and then to top it all off you have older bundlers that maybe can't handle what you're expecting them too.

I release `9.7.0` of `react-spring` and it turns out I broke many apps using `webpack@4` and `create-react-app`. So to avoid that, I set up this small repo template with what I believe to be the "big" bundlers:

* CRA
* NextJS
* Vite
* Webpack 4

## Commands

The repo is mono using [`turborepo`](https://turbo.build/repo).

### `clean`

Removes all `node_modules` & build directories from each package leaving it in a "fresh" state.

### `workspace:add <package name>`

This adds a package to all the workspaces independently using a shell script underneath.