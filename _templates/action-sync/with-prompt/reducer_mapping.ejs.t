---
inject: true
to: src/features/<%= feature %>/redux/reducer.js
after: const reducers = \[
skip_if: <%= h.changeCase.camel(name) %>: <%= h.changeCase.camel(name) %>Reducer
---
  <%= h.changeCase.camel(name) %>Reducer,