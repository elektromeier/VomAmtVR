# VL.WorkflowFoundation #

<img src="https://raw.githubusercontent.com/tebjan/VL.WorkflowFoundation/master/screenshot.png" width="640"/>
The repository contains:

## Workflow Designer
* Workflow Designer - Rehosting in one Form with one tab per state machine
* ToolboxControl - Selected for working with state machines
* Workflow Execution - Retrieve real-time Execution Log (TrackData)
* Workflow Management - Store to file / Run / Stop
* Nested State Machines - Build state machine hierachies
* IStateMachineControl - Interface to control a state machine by code

## Custom Activities
* Wait - Waits for a message with name of parent transition, must be placed in the "Trigger" of a transition
* WaitFor - Waits for a given message, can be placed anywhere

## VL Nodes
* StateMachine - Instance as process node
* SendMessage - Trigger state machine transitions and custom wait points
* State - Get info from a selected state
* ActiveStates - Get a spread of active states
* EditorWindow - Show/hide the designer

<img src="https://raw.githubusercontent.com/tebjan/VL.WorkflowFoundation/master/patch.png" width="640"/>

[VVVV Forum Thread](https://discourse.vvvv.org/t/vl-workflowfoundation/17055)

## Links
These links are from the original author who released the rehosting sample project, thanks!
* Workflow Foundation Overview [Workflow Foundation Overview](https://andreioros.com/blog/windows-workflow-foundation-2017/)
* My presentation at Microsoft Summit 2015 [Introduction to Windows Workflow Foundation](http://www.slideshare.net/orosandrei/windows-workflow-foundation-54773529)
* Blog post about the WF Designer demo &amp; [Windows Workflow Foundation](http://andreioros.com/blog/windows-workflow-foundation-rehosted-designer/)
* Project Showcased at [Microsoft Summit 2015](http://andreioros.com/blog/workflow-foundation-microsoft-summit/#more-92) & [Timisoara .NET Meetup 2](http://www.meetup.com/Timisoara-NET-Meetup/events/186254642/)
* Twitter [@orosandrei](http://twitter.com/orosandrei)

## Credits
* MSDN [Windows Workflow Foundation](http://msdn.microsoft.com/en-us/library/dd489441(v=vs.110).aspx)
* MSDN [What's new in WF 4.5](https://msdn.microsoft.com/en-us/library/hh305677.aspx)
* [Roslyn C# Expression Editor](https://github.com/dmetzgar/wf-rehost-roslyn)
* [Custom Expression Editor](https://blogs.msdn.microsoft.com/cathyk/2009/11/05/implementing-a-custom-expression-editor/)
* [Expression Editing Mechanics](https://blogs.msdn.microsoft.com/cathyk/2009/11/09/expression-editing-mechanics/)
* [Avalon Edit](https://github.com/icsharpcode/AvalonEdit)
