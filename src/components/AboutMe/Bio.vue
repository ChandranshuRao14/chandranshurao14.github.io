<template>
    <div class="col-md-4 bio">
        <h1>Anshu Rao</h1>
        <hr class="bar"/>
        <h6><i class="fa-icon fas fa-map-marker-alt"></i>Austin, TX</h6>
        <h6><i class="fa-icon fas fa-graduation-cap"></i>The University of Texas @ Dallas</h6>
        <h6><i class="fa-icon fas fa-briefcase"></i>Cloud @ Google</h6>
    </div>
</template>

<script>
// imports

export default {
  name: 'Bio',
  props: {
  }
}
</script>

<style>
.bio{
    text-align: left;
}

.bar{
    margin-top: 0;
    width: 100%;
    border: .5px solid white;
    opacity: 0.2;
}
</style>
