<template>
  <div class=u-title>
    <div class=sub-title>{{sub}}</div>
    <div class=title>{{title}}</div>
  </div>
</template>
<script>
export default {
  props: ["title","sub"],
}
</script>
<style>
  .u-title .sub-title{
    margin: 10px;
    margin-top: 20px;

    text-align: center;
    font-size: 18px;
    font-weight: 200;
    color: #efece3;
  }
  .u-title .title{
    margin: 40px;
    margin-top: 10px;

    text-align: center;
    font-size: 44px;
    font-weight: 500;
    color:#efece3;
  }
</style>