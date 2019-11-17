---
inject: true
append: true
to: src/features/<%= feature %>/index.js
skip_if: export \{ default as <%= Name %> \} from
---
export { default as <%= Name %> } from './<%= Name %>';