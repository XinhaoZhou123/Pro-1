<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>企业信息页</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="../layui/css/layui.css">
		<script type="text/javascript" charset="utf-8" src="../js/ueditor.config.js"></script>
		<script type="text/javascript" charset="utf-8" src="../js/ueditor.all.min.js"></script>
		<style>
			.layui-card {margin: 35px 45px 45px 0; text-align: center; border-radius: 10px;}
			.layui-card-header {
				font-size: large; 
				background-color: antiquewhite; 
				border-top-left-radius: 10px;
				border-top-right-radius: 10px;
			}
			.layui-textarea {overflow-x: hidden; color: #697882;}
			img {height: 80px;}
			#btn_upload {margin-left: 20%; margin-top: 20px;}
		</style>
		<script type="text/javascript">
            function IFrameResize()
            {
                    //得到父页面的iframe框架的对象
                var obj = parent.document.getElementById("myFrame");
                    //把当前页面内容的高度动态赋给iframe框架的高
                obj.height = this.document.body.scrollHeight;
            } 
        </script>
	</head>

	<body class="layui-layout-body" 
		style="font-family: '宋体'; background-color: #F8F8FF;" onload="IFrameResize();">
		<div class="layui-layout layui-layout-admin">
			

				<!-- 内容主体区域 -->
			  <div style="background-color: white; 
			  	margin: 0px 50px 0px 0px; background-color: #F8F8FF;">
			  	<div class="layui-col-md6">
			  	  <div class="layui-row">
			  	  	<div class="layui-collapse">
						<div class="layui-col-md12 layui-colla-item">
							<div class="layui-card">
								<div class="layui-card-header layui-colla-title">企业名称</div>
								<div class="layui-card-body layui-colla-content layui-show" 
									style="height: 50px; line-height: 50px;">
									<input class="layui-input" type="text" placeholder="东软睿道"/>
								</div>
							</div>
						</div>
						<div class="layui-col-md12 layui-colla-item">
							<div class="layui-card">
								<div class="layui-card-header layui-colla-title">企业简介</div>
								<div class="layui-card-body layui-colla-content layui-show" 
									style="text-align: left;">
									<textarea class="layui-textarea">沈阳东软睿道教育服务有限公司（简称东软睿道）由东软创办，基于东软的产业发展与人才培养实践,提供更加符合IT行业发展需求的人才培养体系和方法学，精准提升大学生和大学后的就业、创业技能， 为新经济时代的转型发展提供高质量规模化的人才供给。</textarea>
								</div>
							</div>
						</div>
						<div class="layui-col-md12 layui-colla-item">
				        	<div class="layui-card">
								<div class="layui-card-header layui-colla-title">精彩展示</div>
								<div class="layui-card-body layui-colla-content layui-show" >
									<script id="editor" type="text/plain"></script> 
								</div>
							</div>
			      		</div>
				  	</div>
				  </div>
				</div>
				<div class="layui-col-md6">
			      <div class="layui-row">
			      	<div class="layui-collapse">
				      	<div class="layui-col-md12 layui-colla-item">
				        	<div class="layui-card">
								<div class="layui-card-header layui-colla-title">企业图片</div>
								<div class="layui-card-body layui-colla-content layui-show" 
									style="padding-left: 3%;">
									<table class="layui-table">
										<colgroup>
											<col width="150px">
											<col width="200px">
											<col width="150px">
											<col>
										</colgroup>
										<thead>
											<tr>
												<th style="text-align: center;">图片序号</th>
												<th style="text-align: center;">图片显示</th>
												<th style="text-align: center;">上传时间</th>
												<th style="text-align: center;">操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td><img src="../images/yuantiao.jpg"/></td>
												<td>1989-10-14</td>
												<td><button class="layui-btn enterprise_img_table" icon="../images/3.jpg">删除</button></td>
											</tr>
											<tr>
												<td>2</td>
												<td><img src="../images/6.jpg"/></td>
												<td>1990-10-14</td>
												<td><button class="layui-btn" icon="../images/3.jpg">删除</button></td>
											</tr>
											<tr>
												<td>3</td>
												<td><img src="../images/muwu.jpg"/></td>
												<td>1991-10-14</td>
												<td><button class="layui-btn" icon="../images/3.jpg">删除</button></td>
											</tr>
										</tbody>
									</table>
									<button type="button" class="layui-btn" id="btn_upload">选择图片</button>
									<div class="layui-inline layui-word-aux">
										文件最大限制为1M
									</div><br /><br />
								</div>
							</div>
				      	</div>
				      	
					  	<div class="layui-col-md12 layui-colla-item">
				        	<div class="layui-card">
								<div class="layui-card-header layui-colla-title">企业视频</div>
								<div class="layui-card-body layui-colla-content layui-show">
								  <form>
									<video id="enterprise_video" src="" style="width:500px; height:250px;" 
										controls="controls">
									</video>
									<br />
									<button type="button" class="layui-btn" id="btn_delete_video">删除视频</button>
									<button type="button" class="layui-btn" id="btn_upload_video">选择视频</button>
									<p id="demoText"></p>
								  </form>
								</div>
							</div>
				      	</div>
			      	</div>
				  </div>
				</div>

				<div class="layui-form-item">
					<button class="layui-btn" style="margin: 5% 0 0 45%;">
						<a href="enterpriseModify.jsp" style="color: white;">保存企业信息</a>
					</button>
				</div>				
			  </div>

		</div>
		
		<script type="text/javascript" src="../layui/layui.js"></script>
		<script>
			layui.use('form',function(){
				var $ = layui.jquery;
				
				//企业图片介绍
			$("#demo1").attr("src","../images/6.jpg");
			$("#demo2").attr("src","../images/yuantiao.jpg");
		////企业风采中图片
			$("#enterprise_info_img").attr("src","../images/teacher4.jpg");
		////企业视频
			$("#enterprise_video").attr("src","../videos/1.mp4");
			})
		</script>
		
		<script>
			layui.use(['form', 'upload'], function() {
				var form = layui.form,
					layer = layui.layer,
					$ = layui.jquery,
					upload = layui.upload;

				//监听提交
				form.on('submit(demo1)', function(data) {
					layer.alert(JSON.stringify(data.field), {
						title: '最终的提交信息'
					})
					return false;
				});

//				$(".enterprise_img_table").click();
				
				form.val('example', {
					"modify_enterprise_name": "东软睿道" // "name": "value"
				   ,"modify_enterprise_introduction": "沈阳东软睿道教育服务有限公司（简称东软睿道）由东软创办，基于东软的产业发展与人才培养实践，提供更加符合IT行业发展需求的人才培养体系和方法学，精准提升大学生和大学后的就业、创业技能，为新经济时代的转型发展提供高质量规模化的人才供给。"
				   ,"modify_enterprise_jczs":"精彩展示"
				});

				//if(document.getElementById("#demo1").getAttribute('src')!=""){
				//	$("#btn_upload").DISABLED;
				//}

				upload.render({
					elem: '#btn_upload',
					url: '/upload/',
					size: 1024,
					before: function(obj) {
						//预读本地文件示例，不支持ie8
						obj.preview(function(index, file, result) {
							if(!$("#demo1").attr('src')){
								console.log("demo1");
								$("#demo1").show();
								$('#demo1').attr('src', result); //图片链接（base64）
								$('#btn_delete_1').show();
							}else{
								console.log("demo2");
								$("#demo2").show();
								$('#demo2').attr('src', result);
								$('#btn_delete_2').show();
							}
						});
					},
					done: function(res) {
						//如果上传失败
						if(res.code > 0) {
							return layer.msg('上传失败');
						}

						//上传成功
					},
					error: function() {
						//演示失败状态，并实现重传
						var demoText = $('#demoText');
						demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
						demoText.find('.demo-reload').on('click', function() {
							uploadInst.upload();
						});
					}
				});

				upload.render({
					elem: '#btn_upload_video',
					url: '/upload/',
					size: 204800,
					accept:'video',
					before: function(obj) {
						//预读本地文件示例，不支持ie8
						obj.preview(function(index, file, result) {	
								$("#enterprise_video").show();
								$('#enterprise_video').attr('src', result); //图片链接（base64）							
						});
					},
					done: function(res) {
						//如果上传失败
						if(res.code > 0) {
							return layer.msg('上传失败');
						}

						//上传成功
					},
					error: function() {
						//演示失败状态，并实现重传
						var demoText = $('#demoText');
						demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
						demoText.find('.demo-reload').on('click', function() {
							uploadInst.upload();
						});
					}
				});

			});
		</script>
		
		<script type="text/javascript">
			//实例化编辑器
			//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
			var ue = UE.getEditor('editor');

			function isFocus(e) {
				alert(UE.getEditor('editor').isFocus());
				UE.dom.domUtils.preventDefault(e)
			}

			function setblur(e) {
				UE.getEditor('editor').blur();
				UE.dom.domUtils.preventDefault(e)
			}

			function insertHtml() {
				var value = prompt('插入html代码', '');
				UE.getEditor('editor').execCommand('insertHtml', value)
			}

			function createEditor() {
				enableBtn();
				UE.getEditor('editor');
			}

			function getAllHtml() {
				alert(UE.getEditor('editor').getAllHtml())
			}

			function getContent() {
				var arr = [];
				arr.push("使用editor.getContent()方法可以获得编辑器的内容");
				arr.push("内容为：");
				arr.push(UE.getEditor('editor').getContent());
				alert(arr.join("\n"));
			}

			function getPlainTxt() {
				var arr = [];
				arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
				arr.push("内容为：");
				arr.push(UE.getEditor('editor').getPlainTxt());
				alert(arr.join('\n'))
			}

			function setContent(isAppendTo) {
				var arr = [];
				arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
				UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
				alert(arr.join("\n"));
			}

			function setDisabled() {
				UE.getEditor('editor').setDisabled('fullscreen');
				disableBtn("enable");
			}

			function setEnabled() {
				UE.getEditor('editor').setEnabled();
				enableBtn();
			}

			function getText() {
				//当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
				var range = UE.getEditor('editor').selection.getRange();
				range.select();
				var txt = UE.getEditor('editor').selection.getText();
				alert(txt)
			}

			function getContentTxt() {
				var arr = [];
				arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
				arr.push("编辑器的纯文本内容为：");
				arr.push(UE.getEditor('editor').getContentTxt());
				alert(arr.join("\n"));
			}

			function hasContent() {
				var arr = [];
				arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
				arr.push("判断结果为：");
				arr.push(UE.getEditor('editor').hasContents());
				alert(arr.join("\n"));
			}

			function setFocus() {
				UE.getEditor('editor').focus();
			}

			function deleteEditor() {
				disableBtn();
				UE.getEditor('editor').destroy();
			}

			function disableBtn(str) {
				var div = document.getElementById('btns');
				var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
				for(var i = 0, btn; btn = btns[i++];) {
					if(btn.id == str) {
						UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
					} else {
						btn.setAttribute("disabled", "true");
					}
				}
			}

			function enableBtn() {
				var div = document.getElementById('btns');
				var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
				for(var i = 0, btn; btn = btns[i++];) {
					UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
				}
			}

			function getLocalData() {
				alert(UE.getEditor('editor').execCommand("getlocaldata"));
			}

			function clearLocalData() {
				UE.getEditor('editor').execCommand("clearlocaldata");
				alert("已清空草稿箱")
			}
		</script>
</body>

</html>