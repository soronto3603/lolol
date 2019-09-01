
<template>
  <div class=item-list>
    <div class=container>
      <div class=node v-for="node in nodes" :key="node.id">
        <div class=info>
          <div class=item>
            <font class=title>{{node.name}}</font>
            <font class=shortExpression>{{`"${decodeURI(node.short_expression)}"`}}</font>
          </div>
          <div class="item keywords">{{node.keywords}}</div>
          <div class="item note">{{node.note}}</div>
          <div class="item author">{{`작성자 : ${node.author_name}`}}</div>
        </div>
        <div class="time">{{`${new Date(node.create_at).getMonth()+1}월 ${new Date(node.create_at).getDate()}일`}}</div>
        <!-- <div class="time">{{node.create_at}}</div> -->
      </div>
    </div>
  </div>
</template>


<script>
export default {
  props: ["posts"],
  data () {
    return {
      nodes: []
    }
  },
  created () {
    fetch('http://54.180.119.222:8002/posts')
      .then((resp) => resp.json())
      .then((data)=>{
        this.nodes = data;
        console.log(this.nodes)
    })
  },
  mounted () {
    console.log(123)
    // this.nodes = this.posts;
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