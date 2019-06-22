<template>
    <div class="col-md-5 offset-md-1">
        <p class="bio-paragraph">{{ bio_1 }}</p>
        <p class="bio-paragraph">{{ bio_2 }}</p>
    </div>
</template>

<script>
// imports
import json from '../../assets/bio-description.json';

export default {
  name: 'BioInfo',
  props: {
  },
  computed: {
    bio_1: function () {
        return json.paragraph_1
    },
    bio_2: function () {
        return json.paragraph_2
    }
  }
}
</script>

<style>
.bio-paragraph{
    text-align: justify;
}
</style>
