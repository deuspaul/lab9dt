//import { add } from '@deuspaul/lesson8/build/bundle';
import './App.css';
import { multiply, divide, subtract, add } from '@deuspaul/lesson8'
// { multiply, subtract, divide, add } = require('@deuspaul/lesson8');
//const multiply = require('@deuspaul/lesson8');
//const yourModuleName = require('@deuspaul/lesson8');

function App() {
  return (
    <div className="App">
      <header className="App-header"> 
      <input id="num1" />
      <input id="num2" />
      <button onClick={() => alert( multiply(document.getElementById('num1').value, document.getElementById('num2').value) )}>Multiply</button>
      <button onClick={() => alert( divide(document.getElementById('num1').value, document.getElementById('num2').value) )}>divide</button>
      <button onClick={() => alert( subtract(document.getElementById('num1').value, document.getElementById('num2').value) )}>subtract</button>
      <button onClick={() => alert( add(document.getElementById('num1').value, document.getElementById('num2').value) )}>add</button>
        <img src="Octocat.png" className="App-logo" alt="logo" />
        <p>
          GitHub Codespaces <span className="heart">♥️</span> React
        </p>
        <p className="small">
          Edit <code>src/App.jsx</code> and save to reload.
        </p>

        <p>
          <a
            className="App-link"
            href="https://reactjs.org"
            target="_blank"
            rel="noopener noreferrer"
          >
            Learn React
          </a>
        </p>
      </header>
    </div>
  );
}

export default App;
