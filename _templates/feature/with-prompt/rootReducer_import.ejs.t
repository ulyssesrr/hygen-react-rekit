---
inject: true
to: src/common/rootReducer.js
after: import [^\n]+
skip_if: import <%= h.changeCase.camel(name) %>Reducer from
---
import <%= h.changeCase.camel(name) %>Reducer from '../features/<%= name %>/redux/reducer';