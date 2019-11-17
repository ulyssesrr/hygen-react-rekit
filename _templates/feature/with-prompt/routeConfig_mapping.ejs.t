---
inject: true
to: src/common/routeConfig.js
after: const childRoutes = \[
skip_if: <%= h.changeCase.camel(name) %>Route,
---
  <%= h.changeCase.camel(name) %>Route,