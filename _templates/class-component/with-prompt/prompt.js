
// see types of prompts:
// https://github.com/enquirer/enquirer/tree/master/examples
//
import { promptFeature } from '../../utils/util';

module.exports = [
  promptFeature(),
  {
    type: 'input',
    name: 'name',
    message: "Component name? (Example: MyComponent)"
  },
  { 
    type: 'toggle',
    name: 'connected', 
    message: 'Connect with Redux Store?' 
  }
]
