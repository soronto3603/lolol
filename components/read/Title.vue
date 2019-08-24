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
    font-weight: bolder;
    color: #BB86FC;
  }
  .u-title .title{
    margin: 40px;
    margin-top: 10px;

    text-align: center;
    font-size: 40px;
    font-weight: bolder;
    color:rgba(255,255,255, 0.8);
  }
</style>