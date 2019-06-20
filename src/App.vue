<template>
  <div id="app">
    <NavigationBar />
    <Cover />
    <AboutMe />
    <Connect />
  </div>
</template>

<script>
import Cover from './components/Landing/Cover.vue'
import NavigationBar from './components/Shared/NavigationBar.vue'
import Connect from './components/Footer/Connect.vue'
import AboutMe from './components/AboutMe/AboutMe.vue'

export default {
  name: 'app',
  components: {
    AboutMe,
    NavigationBar,
    Cover,
    Connect
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: white;
  margin-top: 60px;
}
.heading{
  text-shadow: 1px 1px black;
}
body{
  background-color: rgb(88, 123, 153) !important;
}
</style>
