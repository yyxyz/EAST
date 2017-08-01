<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="基础信息">
	<@CommonQueryMacro.CommonQuery id="BopUDsAudit" init="false" submitMode="selected" navigate="false" >
		<table align="left">
			<tr>
				<td>
					<@CommonQueryMacro.Interface id="interface"  label="请输入查询条件" />
				</td>
			</tr>
			<tr>
  			  	<td>
  			    	<@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9" pageCache="false" showArrow="true"/>
  			  	</td>
  			</tr>
  			<tr>
		      	<td>
					<@CommonQueryMacro.DataTable id ="datatable1" hasFrame="true" fieldStr="select[40],recStatus[80],approveStatus[80],repStatus[80],custcode,custname,industrycode,attrcode,countrycode,istaxfree,taxfreecode,rptmethod" readonly="true" hasFrame="true" width="900" height="260"/>
		      	</td>
      		</tr>
      		<tr>
		    	<td>
		    		<@CommonQueryMacro.Button id="btAudit"/>
		    	</td>
		    </tr>
		    <tr>
		    	<td>
		    		<@CommonQueryMacro.FloatWindow id="aditADSubWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
		      			<div align="center">
		      				<@CommonQueryMacro.Group id="group1" label="审核信息" fieldStr="approveStatusChoose,approveResultChoose" colNm=2/>
							</br>
		      				<center>
		      					<@CommonQueryMacro.Button id= "btAuditSave"/>&nbsp;&nbsp;
		      					<@CommonQueryMacro.Button id= "btBack"/>
		      				</center>
		      			</div>
		     		</@CommonQueryMacro.FloatWindow>
		    	</td>
			</tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
	<script language="JavaScript">

		function initCallGetter_post(){
			var currentDate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getTxdate()}";
			BopUDsAudit_interface_dataset.setValue("qworkDateStart", currentDate);
			BopUDsAudit_interface_dataset.setValue("qworkDateEnd", currentDate);
		}

		//当系统刷新单元格的内容时被触发
		function datatable1_custcode_onRefresh(cell,value,record) {
			if (record) {//当存在记录时
				var id = record.getValue("id");
				cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + value + "</a>";
			} else {//当不存在记录时
			 	cell.innerHTML="&nbsp;";
			}
		}

		function btAuditSave_onClickCheck(){

		   	var approveStatusChoose = BopUDsAudit_dataset.getValue("approveStatusChoose");
		   	var approveResultChoose = BopUDsAudit_dataset.getValue("approveResultChoose");
		   	if (!approveStatusChoose.length > 0) {
		   		alert("请选择审核结果！");
		   		return false;
		   	}
		   	if (approveStatusChoose == "02" && approveResultChoose.length < 1) {
		   		alert("审核结果不通过，审核说明必须填写！");
		   		return false;
		   	}
		   	BopUDsAudit_dataset.setParameter("approveStatusChoose",approveStatusChoose);
		   	BopUDsAudit_dataset.setParameter("approveResultChoose",approveResultChoose);
			subwindow_aditADSubWindow.hide();
		}

		function btAuditSave_postSubmit(button){
			alert("保存成功");
			BopUDsAudit_dataset.flushData(1);
		}

		function btAudit_onClick(){
			var hasSelected = false;
			var hasAudit = false;
			var record = BopUDsAudit_dataset.getFirstRecord();
			while(record){
				var v_selected = record.getValue("select");
				var v_approveStatus = record.getValue("approveStatus");
				if( v_selected == true ){
					hasSelected=true;
					if (v_approveStatus != "00") {
						hasAudit = true;
					}
				}
				record = record.getNextRecord();
		   	}
		   	if (!hasSelected) {
		   		alert("请选择相应的记录！");
		   		return false;
		   	}
		   	if (hasAudit) {
		   		if(!confirm("所选记录包含已审核记录，确定需重新审核吗？")) {
					return false;
				}
		   	}
			subwindow_aditADSubWindow.show();
		}

		function btBack_onClick(){
			subwindow_aditADSubWindow.hide();
		}

		//详细信息
		function doDetail(id){
			showWin("明细","${contextPath}/fpages/bop/collandaudit/u/ftl/BopUDsCollectionInfo.ftl?id=" + id + "&op=detail","window","",window);
		}
	</script>
</@CommonQueryMacro.page>