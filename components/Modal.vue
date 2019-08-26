<template>
  <div class="modal-window">
    <div class="modal-contents">
      <div></div>
      <div>hello</div>
      <div>hello</div>
      <div>hello</div>
      <div>hello</div>
    </div>
  </div>
</template>
<script>
export default {
  data () {
    return {
      node: {
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
      }
    }
  },
  created () {
    // test
   
  }
}
</script>
<style>
  .modal-window{
    position: fixed;
    background-color: rgba(255, 255, 255, 0.25);
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 1;

    width: 100%;
    height: 100%;

    pointer-events: none;
    transition: all 0.3s;

    visibility: hidden;

    display: flex;
    justify-content: center;  
    align-items: center;
  }
  .modal-on{
    visibility: visible;
    animation: fadeIn 1s ease-in-out 3s;
    animation-fill-mode: forwards;  
  }
  .modal-window .modal-contents{
    max-width: 800px;
    width: 80%;
    max-height: 800px;
    height: 80%;

    border: none;
    border-radius: 25px;
    background-color: #121212;
  }
  .modal-window .modal-contents div{
    color: white;
  }
  /* Safari 4.0 - 8.0 */
  @-webkit-keyframes fadeIn {
    from {opacity: 0;}
    to {opacity: 1;}
  }

  @keyframes fadeIn {
    from {opacity: 0;}
    to {opacity: 1;}
  }
</style>