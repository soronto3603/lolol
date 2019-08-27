<template>
  <div class="app">
    <!-- <Map lat=37.562932 lng=126.965079 /> -->
    <Title title="맛집파인더" sub="지인들의" />
    <ItemList />
  </div>
</template>
<script>
import Map from '~/components/Map.vue'
import Title from '~/components/read/Title.vue'
import ItemList from '~/components/read/Item-List.vue'

export default {
  components: {
    Map,
    Title,
    ItemList
  },
  data () {
    return{
      data: [],
    }
  },
  mounted () {

  }
}
</script>
<style>
  html,body{
    background-color: #121212;
  }
</style>