<template>
    <footer id="connect" class="mast mast-dark">
        <div class="container py-5">
            <h3 class="end-banner">Thanks for visiting!</h3>
            <p>Want to get in touch?</p>
            <button type="button" class="btn contact-btn"><span><i class="fas fa-paper-plane"></i></span> chandranshu.rao @ gmail</button>
            
            <ul class="list-inline list-social text-30">
                <ConnectLink iconClass="fab fa-github" link="https://github.com/ChandranshuRao14" />
                <ConnectLink iconClass="fab fa-linkedin" link="https://www.linkedin.com/in/chandranshurao" />
                <ConnectLink iconClass="fab fa-medium" link="https://github.com/ChandranshuRao14" />
            </ul>
            <p>made using <span><i class="fab fa-vuejs"></i></span> by anshu</p>
            <span class="copyright">© 2019 Chandranshu Rao</span>
        </div>
    </footer>
</template>

<script>

// imports
import ConnectLink from './ConnectLink.vue'

export default {
  name: 'Connect',
  props: {
  },
  components: {
      ConnectLink
  }
}
</script>

<style>
.copyright{
    font-size: 12px;
    opacity: 0.6;
}
h3.end-banner { position: relative; }
h3.end-banner::before,
h3.end-banner::after{
    position: absolute;
    top: 50%;
    display: block;
    width: 30%;
    border-bottom: 5px solid rgba(0, 0, 0, 0.25);
    content: "";
}
h3.end-banner::after { right: 0; }
h3.end-banner::before { left: 0; }
footer{
    background-color: #39373a;
}

.contact-btn {
  z-index: 1;
  position: relative;
  font-size: inherit;
  font-family: inherit;
  color: white !important;
  padding: 0.5em 1em;
  outline: none;
  border: 1px white solid !important;
  background-color: hsl(236, 32%, 26%);
  overflow: hidden;
  transition: color 0.4s ease-in-out;
  margin-top: 20px;
  margin-bottom: 40px;
}

.contact-btn::before {
  content: '';
  z-index: -1;
  position: absolute;
  top: 50%;
  left: 50%;
  width: 1em;
  height: 1em;
  border-radius: 50%;
  background-color: rgb(88, 123, 153);
  transform-origin: center;
  transform: translate3d(-50%, -50%, 0) scale3d(0, 0, 0);
  transition: transform 0.45s ease-in-out;
}

.contact-btn:hover {
  cursor: pointer;
}

.contact-btn:hover::before {
  transform: translate3d(-50%, -50%, 0) scale3d(15, 15, 15);
}

@media only screen and (max-width: 600px) {
  h3.end-banner::before,
  h3.end-banner::after {
    width: 10%;
  }
}

</style>
