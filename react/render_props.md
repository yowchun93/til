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