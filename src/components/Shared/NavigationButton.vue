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
</style>