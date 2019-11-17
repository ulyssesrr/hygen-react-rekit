---
to: src/features/<%= feature %>/<%= Name %>.js
---
import React, { Component } from 'react';
import PropTypes from 'prop-types';
<% if(connected){ -%>
import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import * as actions from './redux/actions';
<% } -%>

export class <%= h.changeCase.pascal(name) %> extends Component {
  static propTypes = {
    <%= feature %>: PropTypes.object.isRequired,
    actions: PropTypes.object.isRequired,
  };

  render() {
    return (
      <div className="<%= feature %>-<%= h.changeCase.param(name) %>">
        Page Content: <%= feature %>/<%= h.changeCase.pascal(name) %>
      </div>
    );
  }
}

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