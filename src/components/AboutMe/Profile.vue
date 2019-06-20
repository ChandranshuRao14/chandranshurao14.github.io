<template>
    <div class="col-md-2">
        <div class="profile">
            <img id="image-profile" src="../../assets/profile.jpeg" />
        </div>
    </div>
</template>

<script>

export default {
  name: 'Profile',
  props: {
  }
}
</script>

<style>
.profile{
    vertical-align: middle;
    width: 140px;
    height: 140px;
    border-radius: 50%;
    overflow: hidden;
    float: right;
    box-shadow: 1px 2px 8px black;
}
#image-profile {
    height: auto; 
    width: auto; 
    max-width: 150px; 
    max-height: auto;
}
@media only screen and (max-width: 600px) {
  .profile{
    margin: 0 auto;
    float: none;
    margin-bottom: 25px;
  }
}

</style>
