<template>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
        <div class="container">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <NavigationButton link="Home" id="home-nav-link" class="active"/>
                    <NavigationButton link="About" id="about-nav-link"/>
                    <NavigationButton link="Connect" id="connect-nav-link"/>
                </ul>
            </div>
        </div>
    </nav>
</template>

<script>

// imports
import NavigationButton from './NavigationButton.vue'
import $ from 'jquery'

export default {
  name: 'NavigationBar',
  props: {
  },
  components: {
      NavigationButton
  },
  mounted() {
    $(document).ready(function() {
        $(window).scroll(function() {
            var currPos = $(document).scrollTop();
            var bottomPos = $(document).scrollTop() + $(window).height();

            // remove active class
            $("#home-nav-link").removeClass("active");
            $("#about-nav-link").removeClass("active");
            $("#connect-nav-link").removeClass("active");

            // reset active class based on position
            if(bottomPos === $(document).height() || currPos >= $("#connect").position().top){
                $("#connect-nav-link").addClass("active");
            }
            else if(currPos >= $("#about").position().top){
                $("#about-nav-link").addClass("active");
            }
            else {
                $("#home-nav-link").addClass("active");
            }

            if(currPos >= $(".home-links").position().top + $(".home-links").height()){
                $("#mainNav").addClass("dark-nav");
            }
            else{
                $("#mainNav").removeClass("dark-nav");
            }
        });
    });
  },
}
</script>

<style>
nav {
    transition: 0.4s all;
}

.dark-nav{
    background-color: #39373a;
}

.navbar-dark .navbar-toggler {
    color: rgba(255,255,255,.75) !important;
    border-color: rgba(255,255,255,.5) !important;
}
</style>