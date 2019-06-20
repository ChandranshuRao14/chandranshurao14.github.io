<template>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
        <div class="container">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <NavigationButton link="Home"/>
                    <NavigationButton link="About"/>
                    <NavigationButton link="Connect"/>
                </ul>
            </div>
        </div>
    </nav>
</template>

<script>

// imports
import NavigationButton from './NavigationButton.vue'

export default {
  name: 'NavigationBar',
  props: {
  },
  components: {
      NavigationButton
  }
}
</script>

<style>
</style>