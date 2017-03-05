component extends="coldbox.system.Interceptor"{
    function configure(){}
    function cbui_afterBodyStart(event,interceptData){
        
        saveContent variable="generatedHTML"{
            writeOutput('<div id="fb-root"></div>
                <script>(function(d, s, id) {
                  var js, fjs = d.getElementsByTagName(s)[0];
                  if (d.getElementById(id)) return;
                  js = d.createElement(s); js.id = id;
                  js.src = "//connect.facebook.net/en_US/sdk.js##xfbml=1&version=v2.8&appId=1141618862552309";
                  fjs.parentNode.insertBefore(js, fjs);
                }(document, "script", "facebook-jssdk"));</script>');
        };
        appendToBuffer( generatedHTML );
    }
}   