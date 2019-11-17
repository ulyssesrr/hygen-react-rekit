---
inject: true
to: src/features/<%= feature %>/route.js
before: \nexport default \{
skip_if: import \{ <%= component %> \} from '\.\/';
---
import { <%= component %> } from './';