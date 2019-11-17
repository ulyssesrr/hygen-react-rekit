---
inject: true
to: src/common/rootReducer.js
after: const reducerMap = \{
skip_if: "<%= h.changeCase.camel(name) %>: <%= h.changeCase.camel(name) %>Reducer"
---
  <%= h.changeCase.camel(name) %>: <%= h.changeCase.camel(name) %>Reducer,