import React from 'react';
import './App.css';
import lottie from 'lottie-web'
import { default as animation } from './animation.json'

function App() {
  console.log(animation)
  const setupAnimation = el => {
    lottie.loadAnimation({
      container: el, 
      renderer: 'svg',
      loop: true,
      autoplay: true,
      animationData: animation
    })
  }

  return (
    <div className="App">
      <section ref={el => setupAnimation(el)}></section>
    </div>
  )
}

export default App;
