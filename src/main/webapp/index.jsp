<html>
<body>
	<h2>Hello World!</h2>
<body>
	id:
	<input type="text" id="id">
	<button id="btn" onclick="findById()">press</button>
	<div id="box"></div>
	<script type="text/javascript">
		var id = document.getElementById("id");
		var un = document.getElementById("btn");

		function findById() {
			var xmlHttp = null;

			if (window.XMLHttpRequest) {
				xmlHttp = new XMLHttpRequest();
			} else {
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			}

			xmlHttp.onreadystatechange = function() {
				if (xmlHttp.status == 200 && xmlHttp.readyState == 4) {
					var box = document.getElementById("box");
					var info = eval("(" + xmlHttp.responseText + ")");
					/* 	for(var i=0;i<info.length;i++)
						{
							box.innerHTML += "ID="+info[i]["id"] +",NAME="+info[i]["name"]+",username="+info[i]["username"]+",password="+info[i]["password"]+",sex="+info[i]["sex"]+",birthday="+info[i]["birthday"]+",nation="+info[i]["nation"]+",edu="+info[i]["edu"]+",word="+info[i]["work"]+",phone="+info[i]["phone"]+",address="+info[i]["address"]+",email="+info[i]["email"]+",qq="+info[i]["qq"]+",wechat="+info[i]["wechat"]+",hobby="+info[i]["hobby"]+",age="+info[i]["age"]+",salary="+info[i]["salary"]+",shoseNumber="+info[i]["shoseNumber"]+",weight="+info[i]["weight"]+",height="+info[i]["height"]+"<br/>"+"<br/>"+"<br/>"+"<br/>";
						} */
					box.innerHTML = "id=" + info[0]["id"] + ",name="
							+ info[0]["name"] + ",username=" + info[0]["username"]
							+ ",password=" + info[0]["password"] + ",sex="
							+ info[0]["sex"] + ",birthday=" + info[0]["birthday"]
							+ ",nation=" + info[0]["nation"] + ",edu="
							+ info[0]["edu"] + ",word=" + info[0]["work"] + ",phone="
							+ info[0]["phone"] + ",address=" + info[0]["address"]
							+ ",email=" + info[0]["email"] + ",qq=" + info[0]["qq"]
							+ ",wechat=" + info[0]["wechat"] + ",hobby="
							+ info[0]["hobby"] + ",age=" + info[0]["age"]
							+ ",salary=" + info[0]["salary"] + ",shoseNumber="
							+ info[0]["shoseNumber"] + ",weight=" + info[0]["weight"]
							+ ",height=" + info[0]["height"] + "<br/>" + "<br/>"
							+ "<br/>" + "<br/>";
				}
			}

			xmlHttp.open("get", "findById?id=" + id.value, true);
			xmlHttp.send();
		}
	</script>
</body>
</html>
