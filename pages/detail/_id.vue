<template>
   <div class="detail-containers">
     <Title :name="node.name"/>
     <DetailContainer
      :author="node.author_name"
      :createdAt="node.created_at"
      :keywords="node.keywords"
      :location="node.location" 
      :name="node.name" 
      :note="node.note"
    />
   </div>
</template>

<script>
import DetailContainer from "../../components/detail/DetailContainer";
import Title from "../../components/detail/Title";

export default {
  components : {
    DetailContainer,
    Title
  },
  
  data () {
    return {
      node: [],
      id : parseInt(this.$route.params.id)
    }
  },
  created () {
    fetch('http://54.180.119.222:8002/posts')
      .then((resp) => resp.json())
      .then((data)=>{
        data.forEach(element => {
          if(element.no===this.id){
            this.node = element
          }
        });
    })
    
  }
}
</script>
<style>
.detial-conatianer{
  display:grid;
  place-items: center center;
}
</style>