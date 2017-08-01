<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="BOPForDebtBilLoan.title">
	<table width="100%">
	<@CommonQueryMacro.CommonQuery id="BOPForDebtSellRepurchaseCol" init="true" submitMode="all" navigate="false">
		<tr>
			<td width="100" valign="top">
				<tr>
					<td>
							<table width="90%" cellpadding="2">
								<tr>
									<td width="75%" valign="top">
										<table width="100%" cellpadding="0" cellspacing="0">
											<tr>
												<td>
													<@CommonQueryMacro.GroupBox id="guoup1" label="基础信息" expand="true">
														<table frame=void class="grouptable" width="100%">
															<tr>
																<td colspan="2" align="center" nowrap class="labeltd">外债编号</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="exdebtcode"/></td>

																<td rowspan="6" align="center" nowrap class="labeltd">债<br>权<br>人<br>信<br>息</td>

																<td align="center" nowrap class="labeltd">类型</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="creditortype"/></td>
															</tr>

															<tr>
																<td colspan="2" align="center" nowrap class="labeltd">债务人代码</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="debtorcode"/></td>

																<td align="center" nowrap class="labeltd">代码</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="creditorcode"/></td>

															</tr>

															<tr>

																<td colspan="2" align="center" nowrap class="labeltd">债务类型</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="debtype"/></td>

																<td align="center" nowrap class="labeltd">中文名称</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="creditorname"/></td>
															</tr>

															<tr>
																<td colspan="2" align="center" nowrap class="labeltd">签约币种</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="contractcurr"/></td>

																<td align="center" nowrap class="labeltd">英文名称</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="creditornamen"/></td>
															</tr>

															<tr>
																<td colspan="2" align="center" nowrap class="labeltd">签约金额</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="contractamount"/></td>

																<td align="center" nowrap class="labeltd">总部所在国家（地区）代码</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="crehqcode"/></td>
															</tr>

															<tr>
																<td colspan="2" align="center" nowrap class="labeltd">起息日</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="valuedate"/></td>

																<td align="center" nowrap class="labeltd">经营地所在国家（地区）代码</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="opercode"/></td>

															</tr>

															<tr>
																<td colspan="2" align="center" nowrap class="labeltd">是否浮动利率</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="floatrate"/></td>

																<td colspan="2" align="center" nowrap class="labeltd">到期日</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="maturity"/></td>
															</tr>

															<tr>
																<td colspan="2" align="center" nowrap class="labeltd">利息本金化金额</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="inpriamount"/></td>

																<td colspan="2"  align="center" nowrap class="labeltd">年化利率值</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="anninrate"/></td>
															</tr>

															<tr>
																<td colspan="2"  align="center" nowrap class="labeltd">是否经外汇局特批不需占用指标	</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="spapfeboindex"/></td>

																<td colspan="2"  align="center" nowrap class="labeltd">业务流水号</td>
																<td  class="datatd"><@CommonQueryMacro.SingleField fId="filler2"/></td>
															</tr>

															<tr>
																<td colspan="2"  align="center" nowrap class="labeltd">备注</td>
																<td  class="datatd" colspan="4"><@CommonQueryMacro.SingleField fId="remark"/></td>
															</tr>
														</table>
													</@CommonQueryMacro.GroupBox>
												</td>
											</tr>
										</table>
									</td>

									<td width="8px"></td>

									<td width="25%" valign="top" id="sysMsgGroup">
										<table width="100%" cellpadding="0" cellspacing="0">
											<tr>
												<td>
													<@CommonQueryMacro.GroupBox id="guoup3" label="系统信息" expand="true">
									             		<table frame=void class="grouptable" width="100%">
															<tr>
																<td align="center" nowrap class="labeltd" width="25%">操作类型</td>
																<td nowrap class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="actiontype" /></td>
															</tr>

															<tr>
																<td align="center" nowrap class="labeltd" width="25%">记录状态</td>
																<td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="recStatus" /></td>
															</tr>

															<tr>
																<td align="center" nowrap class="labeltd">审批状态</td>
																<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="approveStatus" /></td>
															</tr>

															<tr>
																<td align="center" nowrap class="labeltd">审批结果</td>
																<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="approveResult" /></td>
															</tr>

															<tr>
																<td align="center" nowrap class="labeltd">回执状态</td>
																<td nowrap class="datatd">
																	<@CommonQueryMacro.SingleField fId="repStatus" />
																	<a id="repHerf" href="javascript:doRepDet()">回执结果</a>
																</td>
															</tr>

															<tr>
																<td align="center" nowrap class="labeltd">创建时间</td>
																<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="crtTm" /></td>
															</tr>

															<tr>
																<td align="center" nowrap class="labeltd">最后更新时间</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="lstUpdTm" /></td>
															</tr>
														</table>
													</@CommonQueryMacro.GroupBox>
												</td>
											</tr>

											<tr>
												<td id="deleteasc">
													<@CommonQueryMacro.GroupBox id="guoup4" label="删除原因" expand="true">
														<table frame=void class="grouptable" width="100%">
															<tr>
																<td align="center" nowrap class="labeltd" width="25%">删除原因</td>
																<td class="datatd" width="75%"><@CommonQueryMacro.SingleField fId="actiondesc" /></td>
															</tr>
														</table>
													</@CommonQueryMacro.GroupBox>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
					</td>
				</tr>

				<tr>
					<td>
						<table>
							<tr>
								<td colspan="2">
									<@CommonQueryMacro.Button id= "btColSave"/>&nbsp;&nbsp;<@CommonQueryMacro.Button id= "btColDel"/>&nbsp;&nbsp;<@CommonQueryMacro.Button id= "btBack"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</td>
		</tr>
		</@CommonQueryMacro.CommonQuery>
	</table>

	<script language="javascript">
	    var op = "${RequestParameters["op"]?default('')}";

		function debtype_DropDown_beforeOpen(dropDown){
		   DataDicTreeSelect_DropDownDataset.setParameter("headDataTypeNo","24");
		}

		function creditortype_DropDown_beforeOpen(dropDown){
		   DataDicTreeSelectCor_DropDownDataset.setParameter("headDataTypeNo","23");
		}

 		//当页面初始化完之后可以调用该方法执行需要处理的操
		function initCallGetter_post()
		{
			var approveStatus = BOPForDebtSellRepurchaseCol_dataset.getValue("approveStatus");
			var repStatus = BOPForDebtSellRepurchaseCol_dataset.getValue("repStatus");
			if (repStatus != "02") {
				document.getElementById("repHerf").href="#";
				document.getElementById("repHerf").style.color="#999999";
			}

			if("new"==op)
			{
				window.document.getElementById('btColSave').style.display="";
				window.document.getElementById('btColDel').style.display="none";
				window.document.getElementById('repHerf').style.display="none";
				window.document.getElementById('sysMsgGroup').style.display="none";
			}
			else if('mod'==op)
			{
				window.document.getElementById('btColSave').style.display="";
				window.document.getElementById("btColDel").style.display="none";
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("actiondesc",true);
			}
			else if("del" == op)
			{

			    BOPForDebtSellRepurchaseCol_dataset.getField("actiondesc").required=true;

				window.document.getElementById('btColSave').style.display="none";
				window.document.getElementById("btColDel").style.display="";
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("creditortype",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("debtorcode",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("creditorcode",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("debtype",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("creditorname",true);

				//BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("contractdate",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("creditornamen",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("contractcurr",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("crehqcode",true);

				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("contractamount",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("opercode",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("valuedate",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("maturity",true);

				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("floatrate",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("anninrate",true);
				//BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("inprterm",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("spapfeboindex",true);

				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("remark",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("filler2",true);

				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("inpriamount",true);

			}
			else if("detaile" == op)
			{
				BOPForDebtSellRepurchaseCol_dataset.readOnly=true;
				window.document.getElementById('btColSave').style.display="none";
				window.document.getElementById('btColDel').style.display="none";

				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("creditortype",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("debtorcode",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("creditorcode",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("debtype",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("creditorname",true);

				//BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("contractdate",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("creditornamen",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("contractcurr",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("crehqcode",true);

				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("contractamount",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("opercode",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("valuedate",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("maturity",true);

				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("floatrate",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("anninrate",true);
				//BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("inprterm",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("spapfeboindex",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("actiondesc",true);


				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("remark",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("filler2",true);
				BOPForDebtSellRepurchaseCol_dataset.setFieldReadOnly("inpriamount",true);

			}
		}


	   	function btNewClick(){
			btNew.click();
		}

	    function doDelete()
		{
			btDel.click();
		}

			//定位一条记录
		function locate(id) {
			var record = BOPForDebtSellRepurchaseCol_dataset.find(["id"],[id]);
			if (record) {
				BOPForDebtSellRepurchaseCol_dataset.setRecord(record);
			}
		}


		function btColSave_onClickCheck(button)
		{
			if(isEmtry(BOPForDebtSellRepurchaseCol_dataset.getValue("creditortype")))
			{
				alert("字段[ 债务类型 ] 不能为空!");
				return false;
			}

			if(isEmtry(BOPForDebtSellRepurchaseCol_dataset.getValue("creditorname")) && isEmtry(BOPForDebtSellRepurchaseCol_dataset.getValue("creditornamen")))
			{
				alert("债权人中文名称和债权人英文名称至少填写一个!");
				return false;
			}

			if (!BOPForDebtSellRepurchaseCol_dataset.modified) {
					alert("请先修改后再保存！");
					return false;
			}

			var anninrate = BOPForDebtSellRepurchaseCol_dataset.getValue("anninrate");
			if (!isNaN(anninrate) && parseFloat(anninrate) >= 1) {
				alert("[年化利率值]必须为小数");
				return false;
			}
		}

		function btColSave_postSubmit(button)
		{
			alert("保存成功！");
			closeWin(true);
		}

		function btColDel_postSubmit(button)
		{
			alert("删除成功！");
			closeWin(true);
		}

		function btColDel_onClickCheck(button)
		{
			if (op == "del") {
				var actiondesc = BOPForDebtSellRepurchaseCol_dataset.getValue("actiondesc");
				if (actiondesc.length == 0) {
					alert("请填写删除原因！");
					return false;
				}
				BOPForDebtSellRepurchaseCol_dataset.setParameter("op", op);
			}
		}

		function doRepDet(){
			var id = BOPForDebtSellRepurchaseCol_dataset.getValue("id");
			var appType = BOPForDebtSellRepurchaseCol_dataset.getValue("appType");
			var currentfile = BOPForDebtSellRepurchaseCol_dataset.getValue("currentfile");
			var busiCode = BOPForDebtSellRepurchaseCol_dataset.getValue("exdebtcode");
			showPickup("回执结果","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile + "&busiCode=" + busiCode, 600, 500);
		}

		function doApproveDet(){
			var id = BOPForDebtSellRepurchaseCol_dataset.getValue("id");
			var appType = BOPForDebtSellRepurchaseCol_dataset.getValue("appType");
			var currentfile = BOPForDebtSellRepurchaseCol_dataset.getValue("currentfile");
			showPickup("审核结果","${contextPath}/fpages/commonloadpage/ftl/ReportApproveResult.ftl?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile,440,220);
		}


		function isEmtry(value)
		{
			if (""==value || null ==value)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		function btBack_onClick()
		{
			closeWin();
		}
	</script>
</@CommonQueryMacro.page>