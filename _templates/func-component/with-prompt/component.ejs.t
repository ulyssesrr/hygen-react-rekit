---
to: src/features/<%= feature %>/<%= h.changeCase.pascal(name) %>.js
---
import React from 'react';
import PropTypes from 'prop-types';
<% if(connected){ -%>
import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import * as actions from './redux/actions';
<% } -%>

function <%= h.changeCase.pascal(name) %>() {
  return (
    <div className="<%= feature %>-<%= h.changeCase.param(name) %>">
      Page Content: <%= feature %>/<%= h.changeCase.pascal(name) %>
    </div>
  );
}

<%= h.changeCase.pascal(name) %>.propTypes = {
  <%= feature %>: PropTypes.object.isRequired,
  actions: PropTypes.object.isRequired,
};

<% if(connected){ -%>
/* istanbul ignore next */
function mapStateToProps(state) {
  return {
    <%= feature %>: state.<%= feature %>,
  };
}

/* istanbul ignore next */
function mapDispatchToProps(dispatch) {
  return {
    actions: bindActionCreators({ ...actions }, dispatch)
  };
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(<%= h.changeCase.pascal(name) %>);
<% } else { -%>
export default <%= h.changeCase.pascal(name) %>;
<% } -%>