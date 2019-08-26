<template>
    <footer clss = "footer">
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
                <li>
                    <nuxt-link to="/read">Read</nuxt-link>
                </li>
                <li>Index2</li>
                <li>Index3</li>
            </ul>
        </div>
        <div class="footer-bottom copyright">
            <p>&copy; 2019 진짜맛집</p>
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
    color: whitesmoke;
}
.footer-top{
    display : grid;
    place-items: center center;
    border-right: 1px solid whitesmoke;
    cursor: default;
}

.footer-bottom{
    display: grid;
    margin-top: 50px;
    justify-items: flex-end;
    grid-gap : 18px;

}
.SNS-container{
    display: grid;
    grid-auto-flow: column;
    grid-gap: 10px;
}
.list-container{
    margin-top : 20px;
    padding : 5px;
}
a{
    color : whitesmoke;
    text-decoration-line: none;
}
li{
    display: grid;
    place-items: flex-end flex-end;
    list-style-type: none;
    color : whitesmoke;
    text-decoration-line: none;
    opacity: 0.5;
    transition: 0.3s ease-in-out;
    
}
li:hover{
    opacity: 1;
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