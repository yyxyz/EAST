<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="变动信息">

<@CommonQueryMacro.CommonQueryTab id="BOPForDebtSellRepurchaseGenTabs" navigate="false" currentTab="BOPForDebtSellRepurchaseChangeInfoGen">
	<@CommonQueryMacro.CommonQuery id="BOPForDebtSellRepurchaseChangeInfoGen" init="false" submitMode="all" navigate="false" >
		<table align="left">
			<tr>
				<td colspan="2">
					<@CommonQueryMacro.Interface id="interface"  label="请输入查询条件" />
				</td>
			</tr>
			<tr>

  			  <td>
  			    <@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9"   pageCache="false" showArrow="true"/>
  			  </td>
  			 </tr>
  			 <tr>
		      	<td colspan="2">
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="filler2[80],brNo[150],brNoName[150],workDate[100],actiontype[80],exdebtcode[180],buscode[120],changeno[100],changtype[120],chdate[100],chcurrency[160],chamount[120],fairvalue[120]" readonly="true" hasFrame="true" width="900" height="260"/>
		      	</td>

		      </tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">
	var ds = BOPForDebtSellRepurchaseChangeInfoGen_dataset;
	function initCallGetter_post() {
		//通知后台getter类,取得变动信息数据
		ds.setParameter("getType","change");
	}

    function datatable1_filler2_onRefresh(cell,value,record) {
		if (record) {//当存在记录时
			var id = record.getValue("id");
			cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + value + "</a>"
		} else {
			cell.innerHTML="&nbsp;";
		}
	}
	//详细
	function doDetail(id) {
		showWin("卖出回购变动信息","${contextPath}/fpages/datacollection/ftl/BOPForDebtSellRepurchaseChangeInfoCol.ftl?id="+id+"&op=detaile");
	}

</script>
</@CommonQueryMacro.page>