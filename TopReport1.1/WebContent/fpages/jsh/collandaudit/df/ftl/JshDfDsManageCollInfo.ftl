<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#global contextPath = contextPath>
<@CommonQueryMacro.page title="管理信息">
<@CommonQueryMacro.CommonQuery id="JshDfDsManageCollInfo" navigate="false" init="true" insertOnEmpty="true">
<table>
	<tr>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td>
					<@CommonQueryMacro.GroupBox id="groupbox1" label="基础信息"
						expand="true">
						<table frame="void" class="grouptable" width="100%">
							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">申报号码</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="rptno"/><input id="btLoadPage" extra="button" style='width=25px;height=17px;' onclick="loadAccount();" type='button' value='...'/></td>

								<td colspan="2" align="right" nowrap class="labeltd">银行业务编号</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="buscode"/></td>
							</tr>
							<tr>
								<td rowspan="3" colspan="1" align="center" nowrap class="labeltd">收款人信息</td>
								<td rowspan="1" align="center" nowrap class="labeltd">人民币账户账号</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="lcyacc"/></td>

								<td rowspan="5" colspan="1" align="center" nowrap class="labeltd">结汇申请人信息</td>
								<td colspan="1" align="center" nowrap class="labeltd">结汇申请人主体类型</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="custype"/></td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">人民币收款人名称
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="oppuser"/></td>
								<td colspan="1" align="center" nowrap class="labeltd">结汇申请人组织机构代码</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="custcod"/></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">人民币账户开户行</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="oppbank"/></td>
									
								<td colspan="1" align="center" nowrap class="labeltd">结汇申请人个人身份证件号码</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="idcode"/></td>									
							</tr>
							<tr>
								<td rowspan="3" colspan="1" align="center" nowrap class="labeltd">结汇信息</td>
								<td colspan="1" align="center" nowrap class="labeltd">结汇金额</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="fcyamt"/></td>									
								<td colspan="1" align="center" nowrap class="labeltd">结汇申请人名称</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="custnm"/></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">币别</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="fcyccy"/></td>
								<td colspan="1" align="center" nowrap class="labeltd">外汇账户账号</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="fcyacc"/></td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">汇率</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="exrate"/></td>		
							</tr>
						</table> 
						</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
				<tr style="padding-top:15px"><#--MOD  BY HUANGCHENG   2012-8-22 BEGIN-->
				<td>
				<@CommonQueryMacro.GroupBox id="groupbox1" label="管理信息" expand="true">
					<table frame=void class="grouptable" width="900px">
		               	<tr>
		                   	<td colspan="2" align="center" nowrap class="labeltd" >外汇局批件号/备案表号/业务编号</td>
		                   	<td class="datatd"><@CommonQueryMacro.SingleField fId="regno"/> </td>
		
			               	<td colspan="2"  align="center" nowrap class="labeltd" >交易编码 </td>
				           	<td class="datatd"><@CommonQueryMacro.SingleField fId="txcode"/></td>
		               	</tr>
					   	<tr>
					   		<td rowspan="2" colspan="1" align="center" nowrap class="labeltd">结汇用途信息</td>
					   		<td colspan="1" align="center" nowrap class="labeltd" >结汇用途</td>
		                   	<td class="datatd" ><@CommonQueryMacro.SingleField fId="usetype"/> </td>
		                   	<td rowspan="2" colspan="1" align="center" nowrap class="labeltd">填报人信息</td>
		                   	<td rowspan="1" align="center" nowrap class="labeltd" >填报人</td>
				           	<td class="datatd" ><@CommonQueryMacro.SingleField fId="crtuser"/>  </td>
					   	</tr>
					   	<tr>
					   		<td colspan="1" align="center" nowrap class="labeltd" >结汇详细用途</td>
		                   	<td class="datatd" ><@CommonQueryMacro.SingleField fId="usedetail"/> </td>
					        <td colspan="1" align="center" nowrap class="labeltd" >填报人电话</td>
		                   	<td class="datatd" ><@CommonQueryMacro.SingleField fId="inptelc"/> </td>	                   	
					   	</tr>
					   	<tr>
					   		<td colspan="2" align="center" nowrap class="labeltd" >申报日期</td>
				            <td class="datatd" ><@CommonQueryMacro.SingleField fId="rptdate"/>  </td>
				           
				            <td colspan="2" align="center" nowrap class="labeltd" >业务流水号</td>
		                    <td class="datatd" ><@CommonQueryMacro.SingleField fId="filler2"/> </td>
					   	</tr>
		           </table>
		         </@CommonQueryMacro.GroupBox>
		       </td>
		   </tr>
		   
				<tr style="padding-top:10px">
					<td>
						<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;<@CommonQueryMacro.Button id= "btBack"/>
					</td>
				</tr>	
			</table>
		</td>

		<td width="8px"></td>
		<td valign="top" id="systemTableTd">
			<table width="100%" cellpadding="0" cellspacing="0" >
				<tr>
					<td><@CommonQueryMacro.GroupBox id="groupbox2" label="系统信息"
						expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">操作类型</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="actiontype"/></td>
							</tr>
							<tr>
								<td rowspan="1" align="right" nowrap class="labeltd">记录状态</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="recStatus"/></td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">审批状态
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="approveStatus"/>
								</td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">审批说明
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="approveResult"/>
								</td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">回执状态
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="repStatus"/><a id="repResult" href="JavaScript:doRepDet()">回执说明<a/>
								</td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">创建时间</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="crtTm"/></td>
							</tr>
								<td colspan="1" align="center" nowrap class="labeltd">最后修改时间</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="lstUpdTm"/></td>
							</tr>
						</table> 
					</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
				<tr id="actiondescTrTd"><td>
					<@CommonQueryMacro.GroupBox id="groupbox3" label="修改/删除信息"  expand="true">
						<table frame=void class="grouptable" width="100%" >
							<tr>
								<td  align="center" nowrap class="labeltd">修改/删除原因</td>
								<td class="datatd" ><@CommonQueryMacro.SingleField fId="actiondesc"/></td>
							</tr>
						</table>
					</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
			</table></td>

	</tr>


</table>
</@CommonQueryMacro.CommonQuery>
<script language="javascript">
	var op = "${RequestParameters["op"]?default('')}";
	var ds = JshDfDsManageCollInfo_dataset;
	function initCallGetter_post(){
		//回执说明链接样式
		var repStatus = ds.getValue("repStatus");
		if(repStatus != "02") {
			document.getElementById("repResult").href = "javascript:void(0)";
			document.getElementById("repResult").style.color = "#999999";
		}
		//基础信息只读
		ds.setFieldReadOnly("rptno",true);
		ds.setFieldReadOnly("buscode",true);
		ds.setFieldReadOnly("custype",true);
		ds.setFieldReadOnly("custcod",true);
		ds.setFieldReadOnly("idcode",true);
		ds.setFieldReadOnly("custnm",true);
		ds.setFieldReadOnly("fcyacc",true);
		ds.setFieldReadOnly("lcyacc",true);
		ds.setFieldReadOnly("oppuser",true);
		ds.setFieldReadOnly("oppbank",true);
		ds.setFieldReadOnly("fcyamt",true);
		ds.setFieldReadOnly("fcyccy",true);
		ds.setFieldReadOnly("exrate",true);
		// 系统信息只读
		ds.setFieldReadOnly("actiontype",true);
		ds.setFieldReadOnly("recStatus",true);
		ds.setFieldReadOnly("approveStatus",true);
		ds.setFieldReadOnly("approveResult",true);
		ds.setFieldReadOnly("repStatus",true);
		ds.setFieldReadOnly("crtTm",true);
		ds.setFieldReadOnly("lstUpdTm",true);
		//没上报修改原因只读
		var subSuccess = ds.getValue("subSuccess");
		if(subSuccess == "0") {
			if(op == "mod") {
				ds.setFieldReadOnly("actiondesc",true);
			}
		}
		if(op == "add") {
			$("#systemTableTd").get(0).style.display="none";
			$("#actiondescTrTd").hide();
		}
		if(op == "detail") {
			setManageReadOnly();
			$("#btSave").hide();
			$("#btLoadPage").hide();
			ds.setFieldReadOnly("actiondesc",true);
		}
		if(op == "del") {
			setManageReadOnly();
			$("#btLoadPage").hide();
		}
		if(op == "mod") {
			ds.setFieldReadOnly("actiondesc",true);
			ds.setFieldReadOnly("filler2",true);
		}
	}

	function setManageReadOnly() {
		ds.setFieldReadOnly("regno",true);
		ds.setFieldReadOnly("txcode",true);
		ds.setFieldReadOnly("usetype",true);
		ds.setFieldReadOnly("usedetail",true);
		ds.setFieldReadOnly("crtuser",true);
		ds.setFieldReadOnly("inptelc",true);
		ds.setFieldReadOnly("rptdate",true);
		ds.setFieldReadOnly("filler2",true);
	}
	function btBack_onClick() {
		closeWin();
	}

	//弹出签约信息选择框
	function loadAccount(){
		showPickup("基础信息","${contextPath}/fpages/jsh/collandaudit/df/ftl/winloadpage/JshDfDsLoadPage.ftl?type=manage");
	}

	function btSave_onClickCheck(button) {
		var rptno = ds.getValue("rptno");
		if(rptno == null || "" == rptno) {
			alert("请先选择申报号码!");
			return false;
			
		}
		ds.setParameter("op",op);
		return true;
	}
	function btSave_postSubmit(button) {
		alert("保存成功");
		closeWin(true);
	}
	
	function doRepDet(){
		var id = ds.getValue("id");
		var appType = ds.getValue("appType");
		var currentfile = ds.getValue("currentfile");
		//var busiCode = ds.getValue("fileNumber");
		showPickup("回执结果","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile, 600, 500);
	}
	
	function txcode_DropDown_beforeOpen(dropDown){
     	MtsInOutCodeTreeSelect_DropDownDataset.setParameter("headDataTypeNo","01");
    	MtsInOutCodeTreeSelect_DropDownDataset.setParameter("codeType","BOP-IN");
    }
</script>
</@CommonQueryMacro.page>
