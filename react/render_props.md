# Understanding render props in React

Render props is one of the ways to allow reuse of behaviors among components
In React, it is possible to pass a prop whose value is a function to control what is going to be rendered

```jsx
  class App extends React.Component {
    render() {
      return (
        <div className="App">
          <User render={(isLoggedIn) => isLoggedIn ? 'YowChun' : 'Guest'} />

          // Counter render props function takes 2 arguments
          // render props function has to return a React Component
          <Counter render={(count, incrementCount) => (
            <ClickCounterTwo count={count} incrementCount={incrementCounter} />
          )}/>
          <Counter render={(count, incrementCount) => (
            <HoverCounterTwo count={count} incrementCount={incrementCounter} />
          )}/>
        </div>
      )
    }
  }

  class User extends React.Component {

    // render props is a function
    render() {
      return (
        <div>
          {this.props.render(false)}
        </div>
      )
    }
  }

  // Container component
  // contains the state
  class Counter extends React.Component {
    constructor(props) {
      super(props)

      this.state = {
        count: 0
      }
    }

    incrementCount = () => {
      this.setState(prevState => {
        return { count: prevState.count + 1 }
      })
    }

    render() {
      return (
        <div>
          {this.props.render(this.state.count, this.incrementCount)}
        </div>
      )
    }
  }

  class ClickCounterTwo extends Component {
    render() {
      // incrementCount increase count of Counter component
      const { count, incrementCount } = this.props
      return <button onClick={incrementCount}> Clicked {count} times </button>
    }
  }

  class HoverCounterTwo extends Component {
    render() {
      // incrementCount increase count of Counter component
      const { count, incrementCount } = this.props
      return <button onClick={incrementCount}> Hover {count} times </button>
    }
  }
```

Another good example i found, which i think is easier to understand
The concept of "Wrapper Component" is key to understanding render props

```jsx
// Hover will act as a Wrapper component
class Hover extends React.Component {
	state = { hovering: false}
	mouseOver = () => this.setState({ hovering: true })
	mouseOut  = () => this.setState({ hovering: false })

	render() {
		return (
			<div onMouseOver={this.mouseOver} onMouseOut={this.mouseOut}>
				{this.props.render(this.state.hovering)}
			</div>
		)
	}
}

function Info (props) {
  // hovering state is passed from Wrapper Hover component
  const { hovering } = this.props
  return (
    <div>
      {props.hovering === true ? <Tooltip id="info"/> : null }
    </div>
  )
}

<Hover render={(hovering) =>
  <Info hovering={hovering} />
}>
```

Same example but uses passes children as function

```jsx
class Hover extends React.Component {
	state = { hovering: false}
	mouseOver = () => this.setState({ hovering: true })
	mouseOut  = () => this.setState({ hovering: false })

	render() {
		return (
			<div onMouseOver={this.mouseOver} onMouseOut={this.mouseOut}>
				{this.props.children(this.state.hovering)}
			</div>
		)
	}
}

<Hover>
  {(hovering) => <Info hovering={hovering} />}
</Hover>
}>

```