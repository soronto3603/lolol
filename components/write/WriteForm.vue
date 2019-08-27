<template>
  <div class=WriteForm>
    <!-- {
        id: 1,
        location: {
          lat: 32.33,
          lng: 120.55,
        },
        name: "탐앤탐스",
        shortExpression: "다시 옴",
        keywords: ["주차가능", "중국집", "포장가능"],
        note: "커피 완전 맛없음",
        author: "lolol",
        createdAt: "2019-08-08 00:00:00"
      }, -->
    <label>가게 이름</label>
    <input type=text placeholder="가게 이름을 여기에 입력해주세요." v-model="name" />
    <div class=margin />
    <label>위치</label>
    <MapInput lat=37.562932 lng=126.965079 :set-position="setPosition" />
    <div class=margin />
    <label>짧게 표현?</label>
    <select v-model="shortExpression">
      <option disabled value="">Please select one</option>
      <option>자주간다🥰</option>
      <option>괜찮음😁</option>
      <option>한번쯤은😅</option>
      <option>다신안가🤬</option>
    </select>
    <div class=margin />
    <label>키워드</label>
    <input type=text placeholder="키워드들을 입력해주세요. ex) #주차공간 #포장가능." v-model="keywords" />
    <div class=margin />
    <label>노트</label>
    <input type=text placeholder="간단한 소감을 입력해주세요. 😀" v-model="note" />
    <div class=margin />
    <button v-on:click="submitForm" >이대로 입력하기</button>
  </div>
</template>
<script>
import MapInput from '~/components/MapInput.vue'
import EventBus from '~/components/EventBus.vue';

export default {
  props: ["id"],
  data () {
    return {
      name: null,
      shortExpression: null,
      keywords: null,
      note: null,
      lat: null,
      lng: null,
      setPosition: (lat,lng) => {
        this.lat=lat;
        this.lng=lng;
      }
    }
  },
  mounted () {

  },
  methods: {
    submitForm (event) {
      if (!this.name) {
        alert("가게 이름을 입력해주세요!");
        return;
      }
      if (!this.shortExpression) {
        alert("한마디로 선택해주세요!");
        return;
      }
      // if (!this.keywords) {
      //   alert("한마디로 선택해주세요!")
      // }
      // if (!this.note) {
      //   alert("한마디로 선택해주세요!")
      // }
      if (!this.lat || !this.lng) {
        alert("위치를 입력해주세요!");
        return;
      }
      const obj = {
        location: {
          lat: this.lat,
          lng: this.lng,
        },
        name: this.name,
        shortExpression: this.shortExpression,
        keywords: this.keywords,
        note: this.note,
        author_id: this.id,
      }

      fetch('http://54.180.119.222:8002/posts/insert', {
      // fetch('http://localhost:8002/posts/insert', {
        method: 'post',
        body: JSON.stringify(obj)
      }).then(function(response) {
        return response.json();
      }).then(function(data) {
        if (data.code === "success") {
          alert("성공적으로 등록되었습니다.");
        }
      });
    }
  },
  components: {
    MapInput
  }
}
</script>
<style>
  .WriteForm{
    width: 80%;
    margin: 10%;
    margin-top:10px;

    display: flex;
    flex-direction: column;
  }
  .WriteForm label{
    font-size: 18px;
    font-weight: bolder;
    color: rgba(255,255,255, 0.8);
  }
  .WriteForm .margin{
    width:100%;
    height:30px;
  }
  .WriteForm input{
    width:80%;
    height:50px;

    font-size:18px;

    background-color: inherit;
    border: none;
    outline: none;
 
    color: rgba(255,255,255, 0.8);
    
    padding: 3px 0px 3px 3px;
    margin: 5px 1px 3px 0px;
    border: 1px solid rgba(0,0,0,0);
  }
  .WriteForm input[type=text]:focus{
    box-shadow: 0 0 5px rgba(81, 203, 238, 1);
    border: 1px solid rgba(81, 203, 238, 1);
  }
  .WriteForm input[type=text]:hover{
    box-shadow: 0 0 5px rgba(81, 203, 238, 1);
    border: 1px solid rgba(81, 203, 238, 1);
  }
  .WriteForm input[type=text]::placeholder{
    color: rgba(255,255,255, 0.8)
  }
  .WriteForm select{
    width:80%;
    background-color: inherit;
    
    padding: 3px 0px 3px 3px;
    margin: 5px 1px 3px 0px;

    border:none;
    color: #03DAC6;

    font-size:18px;
  }
  .WriteForm select:invalid{
    
    color: #03DAC6;

  }
  .WriteForm button{
    height: 50px;
    background-color: #CF6679;
    border: none;
    color: rgba(255,255,255,0.8);
    font-size: 18px;
    font-weight: bolder;
  }
</style>