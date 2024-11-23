import React, { useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import './Style.css';
import axios from 'axios';

const Login = () => {
  const [values, setValues] = useState({
    email: '',
    password: ''
  });

  const handleSubmit = (event) => {
    event.preventDefault();
    axios.post('http://localhost:4000/auth/adminlogin', values) // Sending `values` in POST request
      .then(result => console.log(result))
      .catch(err => console.log(err));
  };

  return (
    <div className='d-flex justify-content-center align-items-center vh-100 loginpage'>
      <div className='p-3 rounded w-25 border loginForm'>

        <h2>Login Page</h2>
        <form onSubmit={handleSubmit}>
          <div className='mb-3'>
            <label htmlFor='email'><strong>Email:</strong></label>
            <input
              type="email"
              name='email'
              autoComplete='off'
              placeholder='Enter Email'
              className='form-control rounded-0'
              onChange={(e) => setValues({ ...values, email: e.target.value })}
            />
          </div>
          <div className='mb-3'>
            <label htmlFor='password'><strong>Password:</strong></label>
            <input
              type="password"
              name='password'
              placeholder='Enter Password'
              className='form-control rounded-0'
              onChange={(e) => setValues({ ...values, password: e.target.value })}
            />
          </div>
          <button className='btn btn-success w-100 rounded-0 mb-2'>Login</button>
          <div className='mb-1'>
            <input type="checkbox" name='tick' id='tick' />
            <label htmlFor='tick'><strong>You agree with terms & conditions</strong></label>
          </div>
        </form>

      </div>
    </div>
  );
};

export default Login;

style.cs
.loginpage {
    background: url('images/R.jpg'); /* Sets the background image */
    background: linear-gradient(rgba(11,11,11,0.5), rgba(10,10,10,0.5)), url('images/R.jpg');
    /* Adds a semi-transparent gradient overlay */
    background-position: center; /* Centers the image */
    background-repeat: no-repeat; /* Prevents repetition of the image */
    background-size: 100% 120%; /* Scales the image to fit the container */
}



.loginForm {
    background-color: rgba(1,32,93,0.6); /* Adds a semi-transparent blue background */
    color: white; /* Makes the text color white */
}
