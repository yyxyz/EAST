<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro >
<@CommonQueryMacro.page title="澳新交易信息明细查询">
<@CommonQueryMacro.CommonQueryTab id="TradInfoQueryTabs" navigate="true" currentTab="Button1">
   <table align="left">
   <tr>
      <td>
      	<@CommonQueryMacro.CommonQuery id="TradInfoQueryDetail" init="false" navigate="false" submitMode="current">
      		<table width="900px">


			<tr>
   			<td valign="top" colspan="2">
   			<@CommonQueryMacro.Interface id="interface" label="交易信息明细查询" colNm=4 showButton="true" />
        	</td>
       		 </tr>
      			<tr>

      			  <td>
      			    <@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9" pageCache="false" showArrow="true"/>
      			  </td>
					<td align="right" style="display:none">
	    				<a href="javascript:btNewClick();"> 新增</a>
	       			</td>

      			</tr>
      				<tr>
      			  <td colspan="2">
      			     <@CommonQueryMacro.DataTable id="datatable1" fieldStr="updt,cnum,inamt,outamt,cmrm,solId" width="100%" hasFrame="true" readonly="true" />
      			  </td>
      			 </tr>
      			 <tr style="display:none">
					<td colspan="2">
						<@CommonQueryMacro.Button id= "btNew"/>&nbsp;&nbsp;
						<@CommonQueryMacro.Button id= "btDel"/>&nbsp;&nbsp;
						<@CommonQueryMacro.Button id= "btMod"/>&nbsp;&nbsp;
					</td>
				</tr>
				
      		</table>
      	</@CommonQueryMacro.CommonQuery>
      </td>
   </tr>
   </table>
   </@CommonQueryMacro.CommonQueryTab>
<script language="javascript">

	

</script>
</@CommonQueryMacro.page>