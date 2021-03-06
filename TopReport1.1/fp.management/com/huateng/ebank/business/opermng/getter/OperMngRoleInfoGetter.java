package com.huateng.ebank.business.opermng.getter;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import resource.bean.pub.RoleInfo;
import resource.bean.pub.TlrRoleRel;

import com.huateng.common.err.Module;
import com.huateng.common.err.Rescode;
import com.huateng.commquery.result.Result;
import com.huateng.commquery.result.ResultMng;
import com.huateng.ebank.business.common.PageQueryResult;
import com.huateng.ebank.business.management.common.DAOUtils;
import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.operation.OperationContext;
import com.huateng.ebank.framework.web.commQuery.BaseGetter;
import com.huateng.exception.AppException;
import com.huateng.view.pub.TlrRoleRelationView;

/**
 * @author zhiguo.zhao
 *
 */
public class OperMngRoleInfoGetter extends BaseGetter {

	public Result call() throws AppException {
		try {
			PageQueryResult pageResult = getData();
			ResultMng.fillResultByList(getCommonQueryBean(),
					getCommQueryServletRequest(), pageResult.getQueryResult(),
					getResult());
			result.setContent(pageResult.getQueryResult());
			result.getPage().setTotalPage(
					pageResult.getPageCount(getResult().getPage()
							.getEveryPage()));
			result.init();
			return result;
		} catch (AppException appEx) {
			throw appEx;
		} catch (Exception ex) {
			throw new AppException(Module.SYSTEM_MODULE,
					Rescode.DEFAULT_RESCODE, ex.getMessage(), ex);
		}

	}

	private PageQueryResult getData() throws CommonException {
		PageQueryResult pageQueryResult = new PageQueryResult();

		String tlrno = getCommQueryServletRequest().getParameter("tlrno");
		OperationContext oc = new OperationContext();
		String op = (String) getCommQueryServletRequest().getParameterMap().get("op");
		List roleList = null;
		if (op.equals("modify")) {
			roleList = DAOUtils.getRoleInfoDAO().queryByCondition(" 1=1 ");
		} else {
			roleList = DAOUtils.getRoleInfoDAO().queryByCondition(" po.st ='4'");
		}
		
		List urrlist = DAOUtils.getTlrRoleRelDAO().queryByCondition(
				" po.tlrno = '" + tlrno + "' and status <> 0");
		String roleStr = "|";
		for (Iterator it = urrlist.iterator(); it.hasNext();) {
			TlrRoleRel rr = (TlrRoleRel) it.next();
			roleStr += rr.getRoleId() + "|";
		}
		List tlrRoleViewList = new ArrayList();
		// 对以有的操作员岗位在岗位列表中显示
		for (int i = 0; i < roleList.size(); i++) {
			RoleInfo roleInfo = (RoleInfo) roleList.get(i);
			TlrRoleRelationView tlrRoleView = new TlrRoleRelationView();
			tlrRoleView.setRoleId(String.valueOf(roleInfo.getId().intValue()));
			tlrRoleView.setRoleName(roleInfo.getRoleName());
			tlrRoleView.setSelected(roleStr.contains("|" + roleInfo.getId() + "|"));
			tlrRoleViewList.add(tlrRoleView);
		}

		if (tlrRoleViewList != null && tlrRoleViewList.size() > 0) {
			pageQueryResult.setTotalCount(tlrRoleViewList.size());
		} else {
			pageQueryResult.setTotalCount(0);
		}
		pageQueryResult.setQueryResult(tlrRoleViewList);

		return pageQueryResult;
	}
}
