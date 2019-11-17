---
to: src/features/<%= feature %>/redux/<%= h.changeCase.camel(name) %>.js
---
import { useCallback } from 'react';
import { useDispatch } from 'react-redux';

export const <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %> = '<%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>';

export function <%= name %>(args) {
  return {
    type: <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>,
    data: {
      args
    }
  };
}

export function use<%= h.changeCase.pascal(name) %>() {
  const dispatch = useDispatch();
  const boundAction = useCallback((...params) => dispatch(<%= name %>(...params)), [dispatch]);
  return { <%= name %>: boundAction };
}

export function reducer(state, { type, data}) {
  switch (type) {
    case <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>:
      return {
        ...state
      };

    default:
      return state;
  }
}

export default reducer;