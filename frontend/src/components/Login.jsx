import React, { useState } from 'react'
import axios from "axios"
import { useNavigate } from 'react-router-dom';

const Login = () => {
  const [email, setEmail] = useState('');
  const [password, setPassowrd] = useState('');
  const [message, setMsg] = useState('');
  const navigate = useNavigate();

  const Auth = async (e) => {
    e.preventDefault();
    try {
      await axios.post('http://localhost:8000/login', {
        email: email,
        password: password,
      });
      navigate("/dashboard");
      console.log("Berhasil dikirim");
    } catch (error) {
      if (error.response) {
        setMsg(error.response.data.message);
      };
    }
  }

  const handleRegisterClick = () => {
    navigate("/register");
  }

  return (
    <section className="hero has-background-grey-light is-fullheight is-fullwidth">
      <div className="hero-body">
        <div className="container">
          <div className='columns is-centered'>
            <div className='column is-4-desktop'>
              <form onSubmit={Auth} className='box'>
                <p className='has-text-centered'>{message}</p>
                <div className="field mt-5">
                  <label className="label">Email</label>
                  <div className="controls">
                    <input type="text" className="input" placeholder='Username'
                      value={email} onChange={(e) => setEmail(e.target.value)} />
                  </div>
                </div>
                <div className="field mt-5">
                  <label className="label">Password</label>
                  <div className="controls">
                    <input type="password" className="input" placeholder='******'
                      value={password} onChange={(e) => setPassowrd(e.target.value)} />
                  </div>
                </div>
                <div className="field mt-5">
                  <button className='button is-success is-fullwidth'>Login</button>
                </div>
                <p className='has-text-centered '>Belum punya akun?</p>
                <a><p on onClick={handleRegisterClick} className='has-text-centered '>Register</p></a>
              </form>

            </div>
          </div>
        </div>
      </div>
    </section>
  )
}

export default Login
