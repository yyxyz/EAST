<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="ǩԼ��Ϣ">

<@CommonQueryMacro.CommonQueryTab id="BOPForDebtSellRepurchaseGenTabs" navigate="false" currentTab="BOPForDebtSellRepurchaseSignedGen">
	<@CommonQueryMacro.CommonQuery id="BOPForDebtSellRepurchaseSignedGen" init="false" submitMode="all" navigate="false" >
		<table align="left">
			<tr>
				<td colspan="2">
					<@CommonQueryMacro.Interface id="interface"  label="�������ѯ����" />
				</td>
			</tr>
			<tr>
  			  <td>
  			    <@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9"   pageCache="false" showArrow="true"/>
  			  </td>
  			 </tr>
  			 <tr>
		      	<td colspan="2">
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="filler2[80],brNo[150],brNoName[150],workDate[100],actiontype[80],exdebtcode[180],debtorcode[120],debtype[80],valuedate[100],contractcurr[120],contractamount[120],maturity[100],anninrate[100],spapfeboindex" readonly="true" hasFrame="true" width="900" height="260"/>
		      	</td>
		      </tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">
	var ds = BOPForDebtSellRepurchaseSignedGen_dataset;
	function initCallGetter_post() {
		//���͵���̨getter�࣬ȡ��ǩԼ����Ϣ
		ds.setParameter("getType","contract");
	}
    function datatable1_filler2_onRefresh(cell,value,record) {
		if (record) {//�����ڼ�¼ʱ
			var id = record.getValue("id");
			cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + value + "</a>"
		} else {
			cell.innerHTML="&nbsp;";
		}
	}
	//��ϸ
	function doDetail(id) {
		showWin("�����ع�ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtSellRepurchaseCol.ftl?id="+id+"&op=detaile","report","flushPage()");
	}
</script>
</@CommonQueryMacro.page>