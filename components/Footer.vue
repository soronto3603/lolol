<template>
    <footer class = "footer">
        <div class="footer-top first">
            <p>About</p>
            <ul class="list-container">
                <li>Index1</li>
                <li>Index2</li>
                <li>Index3</li>
            </ul>
        </div>
        <div class="footer-top second">
            <p>Contact</p>
            <ul class="list-container">
                <li>Index1</li>
                <li>Index2</li>
                <li><font-awesome-icon :icon="{ prefix: 'fab', iconName: 'facebook' }"  style="font-size: 22px"/></li>
            </ul>
        </div>
        <div class="footer-top third">
            <p>...</p>
            <ul class="list-container">
                <li>Index2</li>
                <li>Index3</li>
            </ul>
        </div>
        <div class="footer-bottom copyright">
            <p>Copyright &copy; {{new Date().getFullYear()}} 아는사람들 Corp</p>
        </div>
        <div class="footer-bottom empty">

        </div>
        <div class="footer-bottom SNS">
            <h4 class="follow__text">Follow us on</h4>
            <ul class="SNS-container">
                <li><a href = "https://www.youtube.com">Youtube</a></li>
                <li><a href = "https://www.facebook.com">Facebook</a></li>
                <li><a href = "https://www.github.com">Github</a></li>
                <li><a href = "https://www.twitter.com">Twitter</a></li>
                <li><a href = "https://www.instagram.com">Instagram</a></li>
            </ul>
        </div>
        
    </footer>
</template>

<style>
.footer{
    display : grid;
    grid-template-columns: repeat(3, 1fr);
    margin-bottom: 20px;
    color: #589167;
    width: 100%;
}
.footer-top{
    display : grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    place-items: center center;
    border-right: 1px solid #589167;
    cursor: default;
    margin-top : 88px;

}

.footer-bottom{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    margin-top: 20px;
    justify-items: flex-end;
    grid-gap : 18px;
    color : #211F1F;
    

}
.SNS-container{
    display: grid;
    grid-auto-flow: column;
    grid-gap : 10px;


}
.list-container{
    margin-top : 20px;
    padding : 5px;
    color : #589167;
}
a{
    color : #211F1F;
    text-decoration-line: none;
}
li{
    display: grid;
    place-items: flex-end flex-end;
    list-style-type: none;
    color : #589167;
    text-decoration-line: none;
    opacity: 0.5;
    transition: 0.3s ease-in-out;
    
}
li:hover{
    opacity: 1;
    color : #211F1F;
}
.copyright{
    place-items: flex-end flex-start ;
}
.third{
    border : none;
}
.follow__text{
    font-weight:400;
}

</style>
<script>
export default {
    name : "AppFooter"
    
}
</script>