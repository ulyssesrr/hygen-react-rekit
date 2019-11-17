
// see types of prompts:
// https://github.com/enquirer/enquirer/tree/master/examples
//
import { promptFeature, promptComponent } from '../../utils/util';

module.exports = {
  prompt: async ({ prompter, args }) => {
    const { feature } = await prompter.prompt(promptFeature());
    const { component } = await prompter.prompt(promptComponent(feature));
    const { path } = await prompter.prompt({
      type: 'input',
      name: 'path',
      message: `Feature path? (Ex: 'list' will result in /${feature}/list use 'index' for /${feature})`
    });
    return {
      feature,
      component,
      path
    }
  }
}