<template>
  <div class="title-container">
    <h1>{{name}}</h1>
  </div>
</template>

<script>
export default {
    props : ['name'],

  data(){
    return{

    }
  }
}
</script>

<style>
.title-container{
  display : grid;
  place-items: flex-start center; 
  padding : 21px;

}
</style>