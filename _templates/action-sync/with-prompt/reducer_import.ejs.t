---
inject: true
to: src/features/<%= feature %>/redux/reducer.js
after: import [^\n]+
skip_if: import <%= h.changeCase.camel(name) %>Reducer from
---
import { reducer as <%= h.changeCase.camel(name) %>Reducer } from './<%= h.changeCase.camel(name) %>';