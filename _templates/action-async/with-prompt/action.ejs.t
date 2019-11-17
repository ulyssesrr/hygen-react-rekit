---
to: src/features/<%= feature %>/redux/<%= name %>.js
---
import { useCallback } from 'react';
import { useDispatch } from 'react-redux';

export const <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_BEGIN = '<%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_BEGIN';
export const <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_SUCCESS = '<%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_SUCCESS';
export const <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_FAILURE = '<%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_FAILURE';
export const <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_DISMISS_ERROR = '<%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_DISMISS_ERROR';


export function use<%= h.changeCase.pascal(name) %>() {
  const dispatch = useDispatch();
  const boundAction = useCallback((...params) => {
      return <%= name %>(...params)(dispatch);
    },
    [dispatch]
  );
  return { <%= name %>: boundAction };
}

export function <%= name %>() {
  return async (dispatch) => {
    
    dispatch({
      type: <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_BEGIN,
    });

    try {
      //let res = await somethingAsync();
      dispatch({
        type: <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_SUCCESS,
        data: {
          //res
        },
      });

      //return res;
    }
    catch (err) {
      dispatch({
        type: <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_FAILURE,
        data: { error: err },
      });
      
      throw err;
    }
  };
}

// Async action saves request error by default, this method is used to dismiss the error info.
// If you don't want errors to be saved in Redux store, just ignore this method.
export function dismiss<%= h.changeCase.pascal(name) %>Error() {
  return {
    type: <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_DISMISS_ERROR,
  };
}

export function reducer(state, { type, data }) {
  switch (type) {
    case <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_BEGIN:
      // Just after a request is sent
      return {
        ...state,
        <%= name %>Pending: true,
        <%= name %>Error: null,
      };

    case <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_SUCCESS:
      // The request is success
      const { res } = data;

      // update state
      return {
        ...state,
        <%= name %>Pending: false,
        <%= name %>Error: null,
      }

    case <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_FAILURE:
      // The request is failed
      return {
        ...state,
        <%= name %>Pending: false,
        <%= name %>Error: data.error,
      };

    case <%= h.changeCase.constant(feature) %>_<%= h.changeCase.constant(name) %>_DISMISS_ERROR:
      // Dismiss the request failure error
      return {
        ...state,
        <%= name %>Error: null,
      };

    default:
      return state;
  }
}

export default reducer;