{config_load file="conf:site.info"}
{include file="tpl:comm.head" title=#SITE_NAME#}
{div class="content"}
欢迎使用 hu60t网站开发框架 进行你的xhtml/wml兼容WAP应用的开发。<br/>
<a href="http://hu60.cn/">访问hu60.cn查看相关文档</a>
{/div}
{div class="title"}
访问测试模板：
{/div}
{div class="content"}
<a href="test.index.form.{$page.bid}">表单测试</a><br/>
<a href="test.index.jump.{$page.bid}">URL跳转测试</a><br/>
<a href="test.index.isbid.{$page.bid}">isbid测试</a><br/>
<a href="test.sql.{$page.bid}">执行SQL语句</a>
{/div}
{div class="title"}许可证：
{/div}
{div class="content"}
本框架由<a href="http://hu60.cn/">{#GROUP_NAME#}</a>创建，你可以打开程序根目录的license.txt查看许可证，这是一个UTF-8编码的文件。
{/div}
{div class="title"}hu60t报时：{/div}
{include file="tpl:comm.foot"}