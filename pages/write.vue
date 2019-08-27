<template>
  <div class="app">
    <!-- <Map lat=37.562932 lng=126.965079 /> -->
    <Greeting v-bind:who="name" />
    <WriteForm :id="id" />
  </div>
</template>
<script>
import Map from '~/components/Map.vue'
import Greeting from '~/components/write/Greeting.vue'
import WriteForm from '~/components/write/WriteForm.vue'

export default {
  data () {
    return {
      who: null,
      author: null,
      name: null,
      id: null,
    }
  },
  cretaed () {
  
  },
  mounted () {
    this.who=decodeURI(location.href.match(/who=.*/)[0].replace(/who=/,''));
    console.log(this.who)
    fetch(`http://54.180.119.222:8002/author/who?id=${this.who}`)
      .then((resp) => resp.json())
      .then((data)=>{
        this.name = data.name;
        this.id = data.no 
    })
  },
  components: {
    Map,
    Greeting,
    WriteForm,
  },
}
</script>
<style>
  html,body{
    background-color: #121212;
  }
</style>