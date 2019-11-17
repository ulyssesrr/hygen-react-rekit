
// see types of prompts:
// https://github.com/enquirer/enquirer/tree/master/examples
//
import { promptFeature } from '../../utils/util';

module.exports = [
  promptFeature(),
  {
    type: 'input',
    name: 'name',
    message: "Action name? (Example: getProducts)"
  }
]
