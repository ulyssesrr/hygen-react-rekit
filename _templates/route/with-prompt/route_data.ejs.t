---
inject: true
to: src/features/<%= feature %>/route.js
before: \s\],
skip_if: "\\{ path: '<%= path %>', component: <%= component %> \\}"
---
    { path: '<%= path %>', component: <%= component %> },