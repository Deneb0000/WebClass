/**
 * 
 */
function delCookie(cname, path){
        
       let now = new Date();
    	now.setDate(now.getDate() - 10);
				let expires = now.toUTCString();

                document.cookie = `${cname}=; ${escape(cvalue)}; expires=${expires}; path=${path}`;
			$("#cookieName").val("");
			$("#cookieValue").val("");
      }

      //쿠키확인버튼
      function getCookie(cname) {
				let cookies = document.cookie;
        let cvalue;

        let pattern = /;\s/
        let cookieArr = cookies.split(pattern);
        cookieArr.forEach(function(elemt, index, array)
      {
        let cnvArr = elemt.split("=");
        if(cnvArr[0] == name ){
          cvalue = unescape( cnvArr[1] ) ;
          };
      });

      if(cvalue){
        return cvalue;
      }else{
       return null;
      }

			}
			function getAllCookies() {
				let cookies = document.cookie;
return cookies;
			}

			function setCookie(cname, cvalue, exdays) {
				let now = new Date();
				now.setDate(now.getDate() + exdays);
				let expires = now.toUTCString();

				// 쿠키를 저장하는 코딩
				document.cookie = `${cname}=${escape(cvalue)}; expires=${expires}; path=/`;
			}

            function setCookie(cname, cvalue, exdays, path) {
				let now = new Date();
				now.setDate(now.getDate() + exdays);
				let expires = now.toUTCString();

				// 쿠키를 저장하는 코딩
				document.cookie = `${cname}=${escape(cvalue)}; expires=${expires}; path=${path}`;
			}
