<template>
  <div class="detail-container">
    <div class="content__container">
      <div class="image__container">
        <span class="imageBox">
          <img src="" alt="Image">
        </span>
      </div>
      <div class="description__container">
        <p>{{note}}</p>
        <p>{{keywords}}</p>
      </div>
      <div class="map__container">
        <p>{{createdAt}}</p>
        <p>Writer : {{author}}</p>
      </div>
    </div>
    <div class="button__container">
      <a href="">
        <button class= "button--green" name = "button">More Info</button>
      </a>
    </div>
  </div>
</template>

<script>
export default {
  props:[    
    'location',
    'name', 
    'keywords',
    'note',
    'createdAt',
    'author'],

  data(){
    return{

    }
  }
}
</script>

<style>
.detail-container{

}
.content__container{
  display : grid;
  grid-template-columns: repeat(3,1fr);
  place-items : center center;  
}
.button__container{
  display: grid;
  place-items : center center;
}
.button__container button{
  transition: 0.2s ease-in-out;
  width : 270px;
  height : 40px;
  cursor: pointer;
  margin-top : 30px;
}

</style>