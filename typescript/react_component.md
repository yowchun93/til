# React component in Typescript

```typescript
  // Component without props
  const Popular: React.FC<{}> = () => {
    return (
      <h1>Popular component</h1>
    )
  }

  // Component with declared Props
  type Props = {
    color? :String;
    onClick: () => void;
  }

  const Popular: React.FC<Props> = () => {
  return (
    <h1>Popular component</h1>
  )
}

```