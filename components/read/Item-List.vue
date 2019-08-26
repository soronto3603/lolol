
<template>
  <div class=item-list>
    <div class=container>
      <div class=node v-for="node in nodes" :key="node.id">
        <div class=info>
          <div class=item>
            <font class=title>{{node.name}}</font>
            <font class=shortExpression>{{`"${node.shortExpression}"`}}</font>
          </div>
          <div class="item keywords">{{node.keywords.map(keyword => `#${keyword}`).join(" ")}}</div>
          <div class="item note">{{node.note}}</div>
          <div class="item author">{{`작성자 : ${node.author}`}}</div>
        </div>
        <div class="time">{{`${new Date(node.createdAt).getMonth()}월 ${new Date(node.createdAt).getDate()}일`}}</div>
      </div>
    </div>
  </div>
</template>


<script>
export default {
  data () {
    return {
      nodes: []
    }
  },
  created () {
    // test
    this.nodes = [
      {
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
      },
      {
        id: 2,
        location: {
          lat: 32.35,
          lng: 120.56,
        },
        name: "사이공 칼국수",
        shortExpression: "한번쯤은?",
        keywords: ["주차불가능", "베트남", "배달가능"],
        note: "아무거나 다 맛있지만, 특히 먹어야하는것은 정해져있다. 그거슨 바로바로 특제 우육탕면 쌀국수 그 쌀국수는 갈빗대가 함유되어있어 뜯고 씹고 맛보고 즐기고가 가능하게 되어진단 말입니다.",
        author: "super mental",
        createdAt: "2019-12-12 00:00:00"
      },
      {
        id: 3,
        location: {
          lat: 32.35,
          lng: 120.56,
        },
        name: "불난 술집",
        shortExpression: "다신안감",
        keywords: ["주차불가능", "술집", "혼술"],
        note: "술은 역시 두명 이서 먹어야지!",
        author: "wong's",
        createdAt: "2019-12-12 00:00:00"
      },
    ]
  },
  mounted () {
    

  }
}
</script>
<style>
  .item-list{
    width:80%;
    margin:10%;
    margin-top:0px;
    margin-bottom:0px;
  }
  .item-list .container{
    margin:20px;
    padding:0px;
  }
  .item-list .container .node{
    display: flex;
    justify-content: space-between;

    margin: 20px;
    padding: 20px;
    border-radius:10px;

    background-color: rgba(255,255,255, 0.8);
  }
  .item-list .container .node .info{
    display: flex;
    flex-direction: column;
  }
  .item-list .container .node .info .item{
    display: block;
    position: relative;
  }
  .item-list .container .node .info .item .title{
    font-size: 25px;
  }
  .item-list .container .node .info .item .shortExpression{
    font-size: 16px;

    color: #CF6679;
  }
  .item-list .container .node .info .item.keywords{
    color: #3700B3;
  }
  .item-list .container .node .info .item.note{
    font-size: 16px;

    color:#242424;
  }
  .item-list .container .node .info .item.author{
    margin-top:10px;

    color:#565656;
  }
  .item-list .container .node .time{
    min-width: 80px;
  }
</style>