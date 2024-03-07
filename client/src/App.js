import './App.css';
import { Route, Routes } from 'react-router-dom';
import CCWList from './components/covered_call_writing/CCWList';

function App() {
  return (
    <div className="App">
      <Routes>
        <Route path='/covered-call-writings' element={
          <CCWList />
        } />
      </Routes>
    </div>
  );
}

export default App;
