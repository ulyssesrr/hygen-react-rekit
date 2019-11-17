---
inject: true
to: src/common/routeConfig.js
after: import [^\n]+
skip_if: import <%= name %>Route from 
---
import <%= name %>Route from '../features/<%= name %>/route';