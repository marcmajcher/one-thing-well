import './App.css';
import { useEffect, useState } from 'react';

function App() {
  const [todos, setTodos] = useState([]);

  useEffect(
    () =>
      fetch('/todos')
        .then((res) => res.json())
        .then((json) => setTodos(json)),
    []
  );
  
  return (
    <div className="App">
      <header className="App-header">
        <ul>
          {todos.map((todo) => (
            <li key={todo.name}>{todo.name}</li>
          ))}
        </ul>
      </header>
    </div>
  );
}

export default App;
