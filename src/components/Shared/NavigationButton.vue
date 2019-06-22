<template>
  <li class="nav-item">
    <a @click="scrollToSection()" class="nav-link js-scroll-trigger">{{ link }}</a>
  </li>
</template>

<script>
import $ from 'jquery'

export default {
  name: 'NavigationButton',
  props: {
    link: String
  },
  methods: {
    scrollToSection() {
      $('html,body').animate({scrollTop: $(this.sectionID).offset().top});
    }
  },
  computed: {
    // a computed getter
    sectionID: function () {
      return "#" + this.link.toLowerCase()
    }
  }
}
</script>

<style>
.nav-link{
  font-size: 18px;
}

.nav-item{
  margin-right: 10px;
  margin-left: 20px;
}

.nav-item a {
  position: relative;
}

.nav-item a::before {
  content: '';
  position: absolute;
  left: 50%;
  bottom: 0;
  width: 100%;
  height: 2px;
  background-color: #fff;;
  transform-origin: center;
  transform: translate(-50%, 0) scaleX(0);
  transition: transform 0.3s ease-in-out;
}

@media (hover: hover) {
  .nav-item a:hover::before {
    transform: translate(-50%, 0) scaleX(1);
  }
}
</style>