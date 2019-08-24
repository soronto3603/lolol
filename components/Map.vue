<template>
    <div id="map"></div>
</template>
<script>
export default {
  props: ["lat","lng"],
  mounted () {
    if (document.getElementById('map') && window.daum) {
      const mapContainer = document.getElementById('map')
      const coords = new window.daum.maps.LatLng(+this.lat, +this.lng)
      const map = new daum.maps.Map(mapContainer, { 
        center: coords,
        level: 3,
      })
    }
  }
}
</script>
<style>
  #map{
    min-width:200px;
    min-height:200px;
    width:100%;
    height:100%;
  }
</style>