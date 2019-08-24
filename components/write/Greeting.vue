<template>
  <div class=u-greeting>
    <div class=title>{{`${who}님 안녕하세요.`}}</div>
  </div>
</template>
<script>
export default {
  props: ["who"],
  mounted () {
    console.log(this.who)
  }
}
</script>
<style>
  .u-greeting .title{
    margin: 40px;
    margin-top: 10px;

    font-size: 40px;
    font-weight: bolder;
    color:rgba(255,255,255, 0.8);
  }
</style>