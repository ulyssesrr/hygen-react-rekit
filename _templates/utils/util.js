import { readdirSync } from 'fs';

export const getFeatures = () =>
  readdirSync(`${process.cwd()}/src/features/`, { withFileTypes: true })
    .filter(dirent => dirent.isDirectory())
    .map(dirent => dirent.name);

export const getComponents = (feature) =>
  readdirSync(`${process.cwd()}/src/features/${feature}/`, { withFileTypes: true })
    .filter(e => e.name.toLowerCase().endsWith('.js'))
    .filter(e => e.isFile())
    .filter(e => e.name.charAt(0) === e.name.charAt(0).toUpperCase())
    .map(e => e.name)
    .map(name => name.substr(0, name.length - '.js'.length));

export const promptFeature = () => {
    return {
      type: 'select',
      name: 'feature',
      message: 'Select feature',
      choices: getFeatures().map((f) => ({ message: f, value: f }))
    }
}

export const promptComponent = (feature) => {
  return {
    type: 'select',
    name: 'component',
    message: 'Select component',
    choices: getComponents(feature).map((f) => ({ message: f, value: f }))
  }
}