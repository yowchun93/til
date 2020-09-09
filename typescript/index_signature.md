In javascript, object can be accessed using string keys.

```javascript
  let foo = {};
  foo['Hello'] = 'World';
  console.log(foo['Hello']);
```

```typescript
  interface Foo {
    [key: string]: {message: string}
  }
  let foo: Foo = {}
  foo['hello'] = 'World'
```

For reference:
https://basarat.gitbook.io/typescript/type-system/index-signatures#:~:text=An%20Object%20in%20JavaScript%20(and,to%20any%20other%20JavaScript%20object.&text=Note%20that%20toString%20will%20get,used%20in%20an%20index%20position.