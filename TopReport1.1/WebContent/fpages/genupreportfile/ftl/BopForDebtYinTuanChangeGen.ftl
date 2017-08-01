<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="变动信息">
<@CommonQueryMacro.CommonQueryTab id="bopForDebtYinTuanGenTabs" navigate="false" currentTab="BopForDebtYinTuanChangeGen">
	<@CommonQueryMacro.CommonQuery id="bopForDebtYinTuanChangeGen" init="false" submitMode="current" navigate="false" >
		<table align="left">
			<tr>
				<td >
					<@CommonQueryMacro.Interface id="interface"  label="请输入查询条件" />
				</td>
			</tr>
			<tr>
  				<td>
  			    	<@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9" pageCache="false" showArrow="true"/>
  			  	</td>
		 	</tr>
		 	<tr>
	      		<td >
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="brNo,brNoName,workDate[85],actiontype[80],exdebtcode[180],buscode[120],changeno,changtype[80],chdate[85],chcurrency[120],chamount,fairvalue" readonly="true" hasFrame="true" width="900" height="260"/>
		      	</td>
	      	</tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">
	
	function datatable1_exdebtcode_onRefresh(cell,value,record) {
		if (record) {//当存在记录时
			var id = record.getValue("id");
			var exdebtcode = record.getValue("exdebtcode");
			cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + exdebtcode + "</a>"
		} else {
			cell.innerHTML="&nbsp;";
		}
	}
	
	//详细信息
	function doDetail(id){
		showWin("银团贷款变动信息明细","${contextPath}/fpages/datacollection/ftl/BopForDebtYinTuanChangeInfo.ftl?id=" + id + "&op=detail");
	}
</script>
</@CommonQueryMacro.page>