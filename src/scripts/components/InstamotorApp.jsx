/**
 * @jsx React.DOM
 */

'use strict';
var React = require('react/addons');
var ReactTransitionGroup = React.addons.TransitionGroup;
// Export React so the devtools can find it
(window !== window.top ? window.top : window).React = React;
var RR = require('react-router');
var Routes = RR.Routes;
var Route = RR.Route;
var DefaultRoute = RR.DefaultRrout;
var Link = RR.Link;
var SimpleSteps = require('./SimpleSteps.cjsx');
var AppNavBar = require('./AppNavBar.cjsx');
var Home = require('./Home.cjsx');
var Dashboard = require('./Dashboard.cjsx');
var Compare = require('./Compare.cjsx');
var EventsTab = require('./EventsTab.cjsx');
var Devices = require('./Devices.cjsx');
var Products = require('./Products.cjsx');
var About = require('./About.cjsx');
// CSS
//require("../../styles/bootstrap/css/bootstrap.css");
//require("../../styles/font-awesome/css/font-awesome.css");
require('../../styles/reset.css');
require('../../styles/main.css');

var imageURL = '../../images/yeoman.png';
var _ = require('underscore');
var steps = ["Step 1", "Step 2", "Step 3", "Step 4"];

var App = React.createClass({
  render: function() {
    return (
      <div>
        <AppNavBar/>
        <this.props.activeRouteHandler/>
      </div>
    );
  }
});
        //{this.props.activeRouteHandler()}
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
    var step_name = this.state.current_step_name;
    return (
      <div className='main'>
        <ReactTransitionGroup transitionName="fade">

          <button type="button" className="btn btn-primary" onClick={this.previous_step}>Back</button>
          <button type="button" className="btn btn-primary" onClick={this.next_step}>Next</button>
          {this.props.activeRouteHandler({current_step_name: this.state.current_step_name})}

        </ReactTransitionGroup>
      </div>
    );
  }
});
          //<SimpleSteps current_step_name={this.state.current_step_name}/>
var Img = React.createClass({
  render: function() {
    return (
      <img src={imageURL} onClick={this.next_step}/>
    );}
});
var routes = (
  <Routes>
    <Route name= "app" path="/" handler={App}>
      <Route name="home" path="home" handler={Home}/>
        <Route name="steps" path="steps" handler={SimpleSteps}/>
      <Route name="dashboard" path="dashboard" handler={Dashboard}/>
      <Route name="compare" path="compare" handler={Compare}/>
      <Route name="devices" path="devices" handler={Devices}/>
      <Route name="eventstab" path="eventstab" handler={EventsTab}/>
      <Route name="products" path="products" handler={Products}/>
      <Route name="about" path="about" handler={About}/>
      <Route name="insta" path="insta" handler={InstamotorApp}>
      <Route name="img" path="img" handler={Img}/>
      </Route>
    </Route>
  </Routes>
);

//React.renderComponent(<InstamotorApp />, document.getElementById('content')); // jshint ignore:line
React.renderComponent(routes, document.body); // jshint ignore:line

module.exports = InstamotorApp;
