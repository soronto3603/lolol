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
                <li>Index3</li>
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
            <h4>Follow us on</h4>
            <ul class="SNS-container">
                <li><a href = "https://www.youtube.com">YouTube</a></li>
                <li><a href = "https://www.facebook.com">Facebook</a></li>
                <li><a href = "https://www.github.com">Github</a></li>
                <li><a href = "https://www.twitter.com">Twitter</a></li>
                <li><a href = "https://www.instagram.com">Instagram</a></li>
            </ul>
        </div>
        
    </footer>
</template>

<style>
footer{
    display : grid;
    grid-template-columns: repeat(3, 1fr);
    padding : 14px;
    margin-bottom: 20px;
    color:  #589167;
}
.footer-top{
    display : grid;
    place-items: center center;
    border-right: 1px solid  #589167;
    cursor: default;
}

.footer-bottom{
    display: grid;
    margin-top: 50px;
    justify-items: flex-end;
    grid-gap : 18px;
    color : #211F1F;

}
.SNS-container{
    display: grid;
    grid-auto-flow: column;
    grid-gap: 10px;
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

</style>
<script>
export default {
    name : "AppFooter"
    
}
</script>