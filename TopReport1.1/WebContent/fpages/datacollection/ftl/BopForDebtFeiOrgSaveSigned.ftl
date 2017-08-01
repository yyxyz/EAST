<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="签约信息">
	<@CommonQueryMacro.CommonQueryTab id="BopForDebtFeiOrgSaveTabs" navigate="false" currentTab="BopForDebtFeiOrgSaveSigned">
		<@CommonQueryMacro.CommonQuery id="bopForDebtFeiOrgSaveSigned" init="false" submitMode="current" navigate="false" >
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
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="opr[100],filler2[80],workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exdebtcode[180],limitType[100],debtorcode[120],debtype[80],valuedate[100],contractcurr[80],floatrate[80],anninrate[80],creditorcode[80],creditorname[80],creditornamen[80],creditortype[80],spapfeboindex[80],crehqcode,opercode" readonly="true" hasFrame="true" width="1000" height="260"/>
		      		</td>
      			</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>
	<script language="JavaScript">

		function initCallGetter_post(){
			var currentDate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getTxdate()}";
			bopForDebtFeiOrgSaveSigned_interface_dataset.setValue("qworkDateStart", currentDate);
			bopForDebtFeiOrgSaveSigned_interface_dataset.setValue("qworkDateEnd", currentDate);
		}

		//当系统刷新单元格的内容时被触发
		function datatable1_opr_onRefresh(cell,value,record) {
			if (record) {//当存在记录时
				var id = record.getValue("id");
				var recStatus = record.getValue("recStatus");
				var innerStr = "<center>";
				if (recStatus == "01" || recStatus == "02") {
					innerStr = innerStr + "<a href=\"JavaScript:doCollection('"+id+"')\">修改</a>&nbsp;&nbsp;<a href=\"JavaScript:doDelete('"+id+"')\">删除</a>"
				} else {
					innerStr = innerStr + "<a title='该记录状态不可修改' style='color:#999999'>修改</a>&nbsp;&nbsp;<a title='该记录状态不可删除' style='color:#999999'>删除</a>";
				}
				innerStr = innerStr + "</center>";
				cell.innerHTML =innerStr;
			} else {//当不存在记录时
			 	cell.innerHTML="&nbsp;";
			}
		}
		function datatable1_filler2_onRefresh(cell,value,record) {
			if (record) {//当存在记录时
				var id = record.getValue("id");
				cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + value + "</a>"
			} else {
				cell.innerHTML="&nbsp;";
			}
		}
		
		function btAdd_onClick(button) {
			btNewClick();
		}
		//新增
		function btNewClick(){
			showWin("非居民机构存款签约新增","${contextPath}/fpages/datacollection/ftl/BopForDebtFeiOrgSaveSignedInfo.ftl?op=new","report","flushPage()");
		}
		//刷新数据
		function flushPage(){
			bopForDebtFeiOrgSaveSigned_dataset.flushData(1);
		}
		//修改
		function doCollection(id){
			showWin("非居民机构存款签约信息修改","${contextPath}/fpages/datacollection/ftl/BopForDebtFeiOrgSaveSignedInfo.ftl?id=" + id + "&op=modify","report","flushPage()");
		}
		//删除
		function doDelete(id){
			showWin("非居民机构存款签约信息删除","${contextPath}/fpages/datacollection/ftl/BopForDebtFeiOrgSaveSignedInfo.ftl?id=" + id + "&op=delete","report","flushPage()");
		}
		//详细信息
		function doDetail(id){
			showWin("非居民机构存款签约信息明细","${contextPath}/fpages/datacollection/ftl/BopForDebtFeiOrgSaveSignedInfo.ftl?id=" + id + "&op=detail");
		}
	</script>
</@CommonQueryMacro.page>