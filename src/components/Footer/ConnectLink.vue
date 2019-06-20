<template>
    <a 
    class="connect_link" 
    target="_blank" 
    :href="link">
        <i :class="iconClass"></i>
    </a>
</template>

<script>
export default {
  name: 'ConnectLink',
  props: {
      iconClass: String,
      link: String,
      txt: String
  }
}
</script>

<style scoped>
.connect_link{
    display: inline-flex;
    vertical-align: middle;
    padding-bottom: 10px;
    text-align: center;
    float: none;
    margin-left: 30px;
    margin-right: 30px;
}

a {
    color: white;
    opacity: 0.75;
    transition: color 0.3s ease;
    -webkit-transition: color 0.3s ease;
    letter-spacing: 1px;
    margin-bottom: 10px;
}

i {
    font-size: 50px;
}
a:hover{
    text-decoration: none;
    color: rgb(88, 123, 153);
    opacity: 1.0;
}
a:hover i {
    transform-origin: center center;
    animation: scale 0.25s ease-in-out forwards;
}
@keyframes scale {
  to {
    transform: scale(1.1);
  }
}
.icon-black,
.icon-black:hover{
    color: black;
}
</style>