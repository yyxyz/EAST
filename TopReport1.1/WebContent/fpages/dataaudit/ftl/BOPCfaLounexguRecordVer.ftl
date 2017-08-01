<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
<@CommonQueryMacro.page title="签约信息">
<@CommonQueryMacro.CommonQueryTab id="BOPCfaLounexguRecordVerTabs" navigate="false" currentTab="BOPCfaLounexguRecordVer">
	<@CommonQueryMacro.CommonQuery id="BOPCfaLounexguRecordVer" init="false" submitMode="selected" navigate="false" >
		<table align="left">
			<tr>
				<td colspan="2">
					<@CommonQueryMacro.Interface id="interface" label="请输入查询条件" />
				</td>
			</tr>
			<tr>
	  			  <td>
	  			    <@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9" pageCache="false" showArrow="true"/>
	  			  </td>
		      </tr>
		    <tr>
		    	<td colspan="2">
					<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btApprove" fieldStr="select[40],filler2,workDate,actiontype[75],recStatus[75],approveStatus[75],repStatus[75],lounexgucode[80],creditorcode[80],debtorcode[80],debtorname[80],debtortype[70],valuedate[80],maturity[80],dofoexlocode[80]"   hasFrame="true" width="1000" height="260" readonly="true"/>
		      	</td>
		    </tr>
		 
		
		<tr>
	    	<td>
	    		<@CommonQueryMacro.FloatWindow id="aditADSubWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
	      			<div align="center">
	      				<@CommonQueryMacro.Group id="group1" label="审核信息"
	        			  fieldStr="approveStatusChoose,approveResultChoose" colNm=2/>
	        			 </br>
	      				<center><@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;
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
	
	function initCallGetter_post(){
		BOPCfaLounexguRecordVer_interface_dataset.setValue("qworkDate","${v_txdate}");
		BOPCfaLounexguRecordVer_interface_dataset.setValue("eworkDate","${v_txdate}");
	}
	     
	function datatable1_filler2_onRefresh(cell,value,record) {
		if (record) {//当存在记录时
			var id = record.getValue("id");
			var filler2 = record.getValue("filler2");
			cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + filler2 + "</a>"
		} else {
			cell.innerHTML="&nbsp;";
		}
	}
	
		//详细信息
	function doDetail(id){
		showWin("签约信息明细","${contextPath}/fpages/datacollection/ftl/BOPCfaLounexguRecordEdit.ftl?id=" + id + "&op=detail");
	}	
	
	
	
	function btApprove_onClick(){
		var hasSelected = false;
		var hasAudit = false;
		var record = BOPCfaLounexguRecordVer_dataset.getFirstRecord();
		while(record){
			var v_selected = record.getValue("select");
			var v_approveStatus = record.getValue("approveStatus");
			if( v_selected == true ){
				hasSelected=true;
				if (v_approveStatus != "00") {
					hasAudit = true;
				}
			}
			record=record.getNextRecord();
	   	}
	   	if (!hasSelected) {
	   		alert("请选择相应的记录！");
	   		return false;
	   	}
	   	if (hasAudit) {
	   		if(!confirm("所选记录包含已审核记录，确定需重新审核吗？"))
			{
				return false;
			}
	   	}
		subwindow_aditADSubWindow.show();
	}
	
	
	function btSave_onClickCheck(){
	
	   	var approveStatusChoose = BOPCfaLounexguRecordVer_dataset.getValue("approveStatusChoose");
	   	var approveResultChoose = BOPCfaLounexguRecordVer_dataset.getValue("approveResultChoose");
	   	if (!approveStatusChoose.length > 0) {
	   		alert("请选择审核结果！");
	   		return false;
	   	}
	   	if (approveStatusChoose == "02" && approveResultChoose.length < 1) {
	   		alert("审核结果不通过，审核说明必须填写！");
	   		return false;
	   	}
	   	BOPCfaLounexguRecordVer_dataset.setParameter("approveStatusChoose",approveStatusChoose);
	   	BOPCfaLounexguRecordVer_dataset.setParameter("approveResultChoose",approveResultChoose);
		subwindow_aditADSubWindow.hide();
	}
	
	
	function btBack_onClick(){
		subwindow_aditADSubWindow.hide();
		
	}
	
	
	
	function btSave_postSubmit(button){
		subwindow_aditADSubWindow.hide();
		BOPCfaLounexguRecordVer_dataset.flushData(1);
		alert("保存成功");
	}
	

</script>
</@CommonQueryMacro.page>