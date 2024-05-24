import { BrowserRouter, Route, Routes } from "react-router-dom"
import Login from "./components/Login.jsx";
import Register from "./components/Register.jsx";
import Navbar from "./components/Navbar.jsx";
import Dashboard from "./components/Dashboard.jsx";

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route exact path="/" element={<Login />}> </Route>
        <Route path="/register" element={<Register />}> </Route>
        <Route path="/dashboard" element={[<Navbar />, <Dashboard />]}> </Route>
      </Routes>
    </BrowserRouter>
  );
}

export default App;
