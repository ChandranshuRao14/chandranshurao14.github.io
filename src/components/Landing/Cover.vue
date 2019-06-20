<template>
  <header id="home" class="jumbotron d-flex align-items-center">
    <div class="container">
      <Particles />
      <Terminal />
      <div class="row">
        <ul class="list-inline list-social text-30 home-links">
          <ConnectLink class="icon-black" iconClass="fab fa-github" link="https://github.com/ChandranshuRao14" />
          <ConnectLink class="icon-black" iconClass="fab fa-linkedin" link="https://www.linkedin.com/in/chandranshurao" />
        </ul>
      </div>
    </div>
  </header>
</template>

<script>

// imports
import Terminal from './Terminal.vue'
import Particles from './Particles.vue'
import ConnectLink from '../Footer/ConnectLink.vue'

export default {
  name: 'Cover',
  props: {
  },
  components: {
    Terminal,
    Particles,
    ConnectLink
  }
}
</script>

<style>
.jumbotron{
  background-color: inherit !important;
  height: 100vh;
  margin-bottom: 0rem !important;
}
.home-links{
  margin: 0 auto;
  margin-top: 60px;
}
</style>

