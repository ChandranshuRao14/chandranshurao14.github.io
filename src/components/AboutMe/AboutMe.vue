<template>
    <div id="about" class="container py-5">
        <div class="row">
            <Profile />
            <Bio />
            <BioInfo />
        </div>
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <button type="button" class="btn cv-btn"><span><i class="fa-icon fas fa-file-alt"></i></span>View my Resume</button>
            </div>
        </div>
    </div>
</template>

<script>

// imports
import Bio from './Bio.vue'
import BioInfo from './BioInfo.vue'
import Profile from './Profile.vue'

export default {
  name: 'AboutMe',
  props: {
  },
  components: {
      Bio,
      BioInfo,
      Profile
  }
}
</script>

<style>
.fa-icon{
    margin-right: 12px;
    width: 20px;
}
.cv-btn {
  z-index: 1;
  position: relative;
  font-size: inherit;
  font-family: inherit;
  color: white !important;
  padding: 0.5em 1em;
  outline: none;
  border: 1px white solid !important;
  background-color: rgb(88, 123, 153);
  overflow: hidden;
  transition: color 0.4s ease-in-out;
  margin-top: 30px;
  margin-bottom: 20px;
}

.cv-btn::before {
  content: '';
  z-index: -1;
  position: absolute;
  top: 50%;
  left: 50%;
  width: 1em;
  height: 1em;
  border-radius: 50%;
  background-color: #39373a;
  transform-origin: center;
  transform: translate3d(-50%, -50%, 0) scale3d(0, 0, 0);
  transition: transform 0.45s ease-in-out;
}

.cv-btn:hover {
  cursor: pointer;
}

.cv-btn:hover::before {
  transform: translate3d(-50%, -50%, 0) scale3d(15, 15, 15);
}
</style>