/**
 * @jsx React.DOM
 */

'use strict';

var React = require('react/addons');
var ReactTransitionGroup = React.addons.TransitionGroup;
// Export React so the devtools can find it
(window !== window.top ? window.top : window).React = React;
var SimpleSteps = require('./SimpleSteps.cjsx');
// CSS
//require('../../../bower_components/font-awesome/css/font-awesome.min.css');
//require('../../../bower_components/bootstrap/dist/css/bootstrap.min.css');
require('../../styles/reset.css');
require('../../styles/main.css');

var imageURL = '../../images/yeoman.png';

var InstamotorApp = React.createClass({
  render: function() {
    return (
      <div className='main'>
        <ReactTransitionGroup transitionName="fade">
          <img src={imageURL} />
          <SimpleSteps current_step_name="Step 4"/>

        </ReactTransitionGroup>
      </div>
    );
  }
});

React.renderComponent(<InstamotorApp />, document.getElementById('content')); // jshint ignore:line

module.exports = InstamotorApp;
