<template>
    <div id="map"></div>
    
</template>
<script>
import EventBus from '~/components/EventBus.vue';

export default {
  props: ["lat","lng","marker"],
  mounted () {
    if (document.getElementById('map') && window.kakao) {
      const mapContainer = document.getElementById('map')
      const coords = new window.kakao.maps.LatLng(+this.lat, +this.lng)
      const map = new kakao.maps.Map(mapContainer, { 
        center: coords,
        level: 3,
      })
      // 지도를 클릭한 위치에 표출할 마커입니다
      var marker = new kakao.maps.Marker({ 
          // 지도 중심좌표에 마커를 생성합니다 
          position: map.getCenter() 
      })
      // 지도에 마커를 표시합니다
      marker.setMap(map);

      // 지도에 클릭 이벤트를 등록합니다
      // 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
      kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
          
          // 클릭한 위도, 경도 정보를 가져옵니다 
          var latlng = mouseEvent.latLng
          
          // 마커 위치를 클릭한 위치로 옮깁니다
          marker.setPosition(latlng)
          
          
          EventBus.$emit('onchangemarker', latlng);
          // console.log(latlng)
          // var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, '
          // message += '경도는 ' + latlng.getLng() + ' 입니다'
          
          // var resultDiv = document.getElementById('clickLatlng')
          // resultDiv.innerHTML = message
          
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