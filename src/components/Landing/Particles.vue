<template>
    <div id='particles-view'>
    </div>
</template>

<script>

// imports
import 'particles.js'
import json from '../../assets/particles.json'

export default {
  name: 'Particles',
  mounted () {
    this.init()
  },
  props: {
  },
  methods: {
      init(){
        window.particlesJS('particles-view', json)
      }
  }
}
</script>

<style>
#particles-view canvas{
    position: fixed;
    left: 0;
    top: 0;
    height: 400px;
    width: 100%;
    z-index: -1; 
}
</style>
