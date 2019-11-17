---
inject: true
append: true
to: src/features/<%= feature %>/index.js
skip_if: export \{ default as <%= h.changeCase.pascal(name) %> \} from
---
export { default as <%= h.changeCase.pascal(name) %> } from './<%= h.changeCase.pascal(name) %>';