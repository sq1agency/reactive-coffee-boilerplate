# Reactive Coffee Boilerplate
An isomorphic ReactJS boilerplate that includes webpack hot loading, Coffeescript support, and a built-in Flux architecture.

## To Do
- [ ] Finish Flux integration

## Development
Run `npm run dev` to run the code in development mode. This will turn on the webpack hot loader, which will automatically refresh pages as React components are changed.

To prepare for deployment, do `npm run deploy`

### Languages/Tools Being Used
- [ReactJS](http://facebook.github.io/react/): Allows for high modularity and easy maintainability by making frontend development *component* driven.

- [Radium](http://projects.formidablelabs.com/radium/): A React mixin library that allows you to define styles in Javascript inside of React components.

- [NodeJS](http://nodejs.org/): Javascript backend, asynchronous I/O.

- [Webpack](http://webpack.github.io/): A module builder

- [React Hot Loader](http://gaearon.github.io/react-hot-loader): Hot loads/swaps ReactJS modules using socket.io. You don't ever have to mess with this.

- [Flux](http://facebook.github.io/flux/docs/overview.html): Flux is the application architecture that Facebook uses for building client-side web applications. It complements React's composable view components by utilizing a unidirectional data flow. It's more of a pattern rather than a formal framework, and you can start using Flux immediately without a lot of new code.
