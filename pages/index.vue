<template>
  <div class="app">
    <!-- <Map lat=37.562932 lng=126.965079 /> -->
    
    <Modal />
  </div>
</template>
<script>
import Map from '~/components/Map.vue'
import Modal from '~/components/Modal.vue'


export default {
  components: {
    Map,
    Modal
  }
}
</script>
<style>
  html,body{
    background-color: #121212;
  }
</style>