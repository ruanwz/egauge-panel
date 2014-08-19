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
var _ = require('underscore');
var steps = ["Step 1", "Step 2", "Step 3", "Step 4"];
var InstamotorApp = React.createClass({

  getInitialState: function() {
    return {
      current_step_name: 'Step 1'
    };
  },
  previous_step: function(){
    var current = this.state.current_step_name;
    var position = _.indexOf(steps, current);

    if (position > 0) {
      this.setState({current_step_name: steps[position-1]});
    }
  },
  next_step: function(){
    var current = this.state.current_step_name;
    var position = _.indexOf(steps, current);

    if (position < steps.length - 1) {
      this.setState({current_step_name: steps[position+1]});
    }
  },
  render: function() {
    return (
      <div className='main'>
        <ReactTransitionGroup transitionName="fade">
          <img src={imageURL} onClick={this.next_step}/>
          <button type="button" className="btn btn-primary" onClick={this.previous_step}>Back</button>
          <button type="button" className="btn btn-primary" onClick={this.next_step}>Next</button>

          <SimpleSteps current_step_name={this.state.current_step_name}/>

        </ReactTransitionGroup>
      </div>
    );
  }
});

React.renderComponent(<InstamotorApp />, document.getElementById('content')); // jshint ignore:line

module.exports = InstamotorApp;
