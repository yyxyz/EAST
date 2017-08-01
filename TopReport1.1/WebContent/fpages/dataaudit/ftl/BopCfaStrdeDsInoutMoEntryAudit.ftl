<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="资金流出入和结购汇信息">
<@CommonQueryMacro.CommonQueryTab id="bopCfaStrdeDsAuditTabs" navigate="false" currentTab="bopCfaStrdeDsInoutMoEntryAudit">
	<@CommonQueryMacro.CommonQuery id="bopCfaStrdeDsInoutMoEntryAudit" init="false" submitMode="selected" navigate="false" >
		<table align="left">
			<tr>
				<td colspan="2">
					<@CommonQueryMacro.Interface id="interface" label="请输入查询条件" />
				</td>
			</tr>
			<tr>
				<td valign="top">
					<@CommonQueryMacro.PagePilot id="ddresult" maxpagelink="9" showArrow="true" />
				</td>
		    </tr>
		    
		    <tr>
		    	<td colspan="2">
					<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAudit" fieldStr="select[80],filler2[80],workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],apptype[80],currentfile[320],branchcode[120],buocmonth[100],currency[200],moexamusd,moamreusd,mopfexamusd,mosettamusd,remark[300]" hasFrame="true" width="900" height="260" readonly="true"/>
		      	</td>
		    </tr>
		    		
		    
		    <tr>
		    	<td>
		    		<@CommonQueryMacro.FloatWindow id="auditSubWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
		      			<div align="center">
		      				<@CommonQueryMacro.Group id="group1" label="审核信息"
		        			  fieldStr="approveStatusChoose,approveResultChoose" colNm=2/>
		        			 </br>
		      				<center><@CommonQueryMacro.Button id="btAuditSave"/>&nbsp;&nbsp;
		      				<@CommonQueryMacro.Button id= "btBack"/></center>
		      			</div>
		     		</@CommonQueryMacro.FloatWindow>
		    	</td>
		    </tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
</td></tr></table>
<script language="JavaScript">
	//工作日期
	var ds = bopCfaStrdeDsInoutMoEntryAudit_dataset;
	function initCallGetter_post() {
		<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
		bopCfaStrdeDsInoutMoEntryAudit_interface_dataset.setValue("qworkDateStart","${v_txdate}");
		bopCfaStrdeDsInoutMoEntryAudit_interface_dataset.setValue("qworkDateEnd","${v_txdate}");
	}
	//刷新操作内容
	function datatable1_operation_onRefresh(cell,value,record) {
		if(record) {
			cell.innerHTML="<center><a href=\"JavaScript:doMod('"+value+"')\">修改</a>&nbsp;&nbsp;<a href=\"JavaScript:doDel('"+value+"')\">删除</a></center>";
		} else {
			cell.innerHTML = "&nbsp;";
		}
	}
	function datatable1_filler2_onRefresh(cell,value,record) {
		if(record) {
			var id = record.getValue("id");
			cell.innerHTML = "<center><a href=\"JavaScript:doDetail('"+id+"')\">"+value+"</a></center>";
		} else {
			cell.innerHTML = "&nbsp;";
		}
	}
	function btAudit_onClick() {
		var hasSelect = false;
		var hasAudit = false;
		var record = ds.getFirstRecord();
		while(record) {
			var v_select = record.getValue("select");
			var v_approveStatus = record.getValue("approveStatus");
			if(v_select == true) {
				hasSelect = true;
				if(v_approveStatus != "00") {
					hasAudit = true;
				}
			}
			record = record.getNextRecord();
		}
		if(!hasSelect) {
			alert("请选择相应的记录！");
			return false;
		}
		if(hasAudit) {
			if(!confirm("所选记录包含已审核记录，确定要重新审核吗?")) {
				return false; 
			}
		}
		subwindow_auditSubWindow.show();
	}
	function btAuditSave_onClickCheck() {
		var approveStatusChoose = ds.getValue("approveStatusChoose");
		var approveResultChoose = ds.getValue("approveResultChoose");
		if(!approveStatusChoose.length > 0) {
			alert("请选择审核结果！");
	   		return false;
		}
		if (approveStatusChoose == "02" && approveResultChoose.length < 1)
		   	{
		   		alert("审核结果不通过，审核说明必须填写！");
		   		return false;
		   	}
		ds.setParameter("approveStatusChoose",approveStatusChoose);
		ds.setParameter("approveResultChoose",approveResultChoose);
		subwindow_auditSubWindow.hide();
		return true;
	}
	//详细
	function doDetail(id) {
		showWin("资金流出入和结购汇信息详细","${contextPath}/fpages/datacollection/ftl/BopCfaStrdeDsEntryInoutMoInfo.ftl?id="+id+"&op="+"detail");
	}
	
	//返回
	function btBack_onClick() {
		subwindow_auditSubWindow.hide();
	}
	
	function btAuditSave_postSubmit(button){
		alert("保存成功");
		ds.flushData(1);
	}
</script>
</@CommonQueryMacro.page>