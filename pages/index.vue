<template>
  <section class="container">
    <div>123</div>
    <div id=map></div>
  </section>
</template>

<script>
import AppLogo from '~/components/AppLogo.vue'

export default {
  components: {
    AppLogo
  },
  mounted() {
    if (document.getElementById('map') && window.daum) {
      const mapContainer = document.getElementById('map')
      const coords = new window.daum.maps.LatLng(37.562932, 126.965079)
      // 이미지 지도를 생성합니다
      const map = new daum.maps.Map(mapContainer, { 
        center: coords, // 이미지 지도의 중심좌표
        level: 3, // 이미지 지도의 확대 레벨
      })
      // if (window.innerWidth > 699) {
      //   const projection = map.getProjection()
      //   const x = this.$refs.map.offsetWidth * 3 / 4
      //   const y = this.$refs.map.offsetHeight / 2
      //   map.setCenter(projection.coordsFromPoint(new daum.maps.Point(x, y)))
      // }

      // const markerImage = new daum.maps.MarkerImage(
      //   "/images/home/marker.png",
      //   new daum.maps.Size(34, 50),
      //   {offset: new daum.maps.Point(18, 50)}
      // )
      // new daum.maps.Marker({
      //   position: coords,
      //   image: markerImage,
      // }).setMap(map)
    }
  }

}
</script>

<style>
.container {
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family: "Quicksand", "Source Sans Pro", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif; /* 1 */
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>

