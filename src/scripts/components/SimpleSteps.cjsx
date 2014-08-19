React = require 'react/addons'
CR = require '../cr.coffee'
d = CR.React.DOM
StepComponent = CR.React.createClass
  step_status: ->
    current = this.props.current_step_name 
    own = this.props.step_name
    return "active" if current == own
    if current < own
      "disabled"
    else
      "complete"
  render: ->
    <div className={"col-xs-3 smpl-step-step "+this.step_status()}>           
        <div className="text-center smpl-step-num">{this.props.step_name}</div>
        <div className="progress">
            <div className="progress-bar"></div>
        </div>
        <a className="smpl-step-icon"><i className={"fa fa-"+this.props.icon_name} ></i></a>
        <div className="smpl-step-info text-center">{this.props.step_info}</div>
    </div>
SimpleSteps = CR.React.createClass
  render: ->
    <div className="row smpl-step" >
      <StepComponent current_step_name={this.props.current_step_name} step_name="Step 1" icon_name="user" step_info="Registe User via control panel."/>
      <StepComponent current_step_name={this.props.current_step_name} step_status="active" step_name="Step 2" icon_name="dollar" step_info="Process Payment and fill out all required fields."/>
      <StepComponent current_step_name={this.props.current_step_name} step_status="disabled" step_name="Step 3" icon_name="repeat" step_info="Confirm Data entered in step 2"/>
      <StepComponent current_step_name={this.props.current_step_name} step_status="disabled" step_name="Step 4" icon_name="download" step_info="Download product after receiving confirmation email"/>
    </div>
module.exports = SimpleSteps
