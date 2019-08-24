<template>
  <div class="app">
    <!-- <Map lat=37.562932 lng=126.965079 /> -->
    <Greeting v-bind:who="name" />
    <WriteForm />
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
    }
  },
  cretaed () {
    this.fetchAuthor();  
  },
  mounted () {
    this.who=decodeURI(location.href.match(/who=.*/)[0].replace(/who=/,''));
    fetch(`http://localhost:8002/author/who?id=${this.who}`)
        .then((resp) => resp.json())
        .then((data)=>{
          this.name = data.name;
        })
  },
  methods: {
    fetchAuthor () {
      fetch(`http://localhost:8002/author/who?id=${this.who}`)
        .then(r=>{
          console.log(r);
          this.author = r;
        })
    }
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