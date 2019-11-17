---
inject: true
append: true
to: src/features/<%= feature %>/redux/actions.js
skip_if: export \{ <%= name %> \} from
---
export { <%= name %> } from './<%= name %>';