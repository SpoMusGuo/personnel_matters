<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD id=Head1><TITLE>导航</TITLE>
    <META http-equiv=Content-Type content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/index_menu.css" />

    <SCRIPT language=javascript>
        function MenuDisplay(obj)
        {
            for(var i=1;i<=12;i++)
            {
                document.getElementById('table_'+i).style.display='none';
                document.getElementById('table_'+i+'Span').innerText='＋';
            }
            if(document.getElementById(obj).style.display=='none')
            {
                document.getElementById(obj).style.display='block';
                document.getElementById(obj+'Span').innerText='－';
            }
            else
            {
                document.getElementById(obj).style.display='none';
                document.getElementById(obj+'Span').innerText='＋';
            }
        }
    </SCRIPT>

    <META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
    <FORM id=form1 name=form1 action=YHMenu.aspx method=post >
        <TABLE cellSpacing=0 cellPadding=0 width=210 align=center border=0>
            <TBODY>
            <TR>
                <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_005.jpg" border=0></TD>
                <TD align=middle width=180 background=${pageContext.request.contextPath }/images/new_006.jpg
                    height=35><B>人力资源 －功能菜单</B> </TD>
                <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_007.jpg"
                                  border=0></TD></TR></TBODY></TABLE>
        <TABLE cellSpacing=0 cellPadding=0 width=210 align=center border=0>
            <TBODY>
                <TR>
                    <TD width=15 background=${pageContext.request.contextPath }/images/new_008.jpg></TD>
                    <TD vAlign=top width=180 bgColor=#ffffff>
                        <TABLE cellSpacing=0 cellPadding=3 width=165 align=center border=0>
                            <TBODY>

                                <TR>
                                    <TD class=mainMenu onClick="MenuDisplay('table_1');"><SPAN
                                            class=span id=table_1Span>＋</SPAN> 常用查询</TD>
                                </TR>
                                <TR>
                                    <TD>
                                        <TABLE id=table_1 style="DISPLAY: none" cellSpacing=0 cellPadding=2
                                               width=155 align=center border=0>
                                            <TBODY>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="https://www.hao123.com"
                                                                       target=dmMain>－ 有驾照的员工</A></TD></TR>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 奖惩次数查询</A></TD></TR>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 员工信息组合条件查询</A></TD></TR>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 合同即将到期员工信息</A></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                    <TD background=${pageContext.request.contextPath }/images/new_027.jpg height=1></TD></TR>
                                <TR>
                                    <TD class=mainMenu onClick="MenuDisplay('table_2');"><SPAN
                                            class=span id=table_2Span>＋</SPAN> 工资管理</TD></TR>
                                <TR>
                                    <TD>
                                        <TABLE id=table_2 style="DISPLAY: none" cellSpacing=0 cellPadding=2
                                               width=155 align=center border=0>
                                            <TBODY>
                                                <TR>
                                                    <TD class=menuSmall><A class=style2
                                                                           href="PersonalIncomeTaxSetting/1"
                                                                           target=dmMain>－ 个人所得税设置</A></TD></TR>
                                                <TR>
                                                    <TD class=menuSmall><A class=style2
                                                                           href="PieceworkProductSetup"
                                                                           target=dmMain>－ 计件产品设置</A></TD></TR>
                                                <TR>
                                                    <TD class=menuSmall><A class=style2
                                                                           href="#"
                                                                           target=dmMain>－ 计件工序设置</A></TD></TR>
                                                <TR>
                                                    <TD class=menuSmall><A class=style2
                                                                           href="#" target=dmMain>－
                                                        计时工资表</A>
                                                    </TD>
                                                </TR>
                                                <TR>
                                                    <TD class=menuSmall><A class=style2
                                                                           href="#" target=dmMain>－
                                                        提成项目表</A>
                                                    </TD>
                                                </TR>
                                                <TR>
                                                    <TD class=menuSmall><A class=style2
                                                                           href="#" target=dmMain>－
                                                        提成工资表</A>
                                                    </TD>
                                                </TR>
                                                <TR>
                                                    <TD class=menuSmall><A class=style2
                                                                           href="#" target=dmMain>－
                                                        员工工资卡</A>
                                                    </TD>
                                                </TR>
                                                <TR>
                                                    <TD class=menuSmall><A class=style2
                                                                           href="#" target=dmMain>－
                                                        个人所得税起征额设置</A>
                                                    </TD>
                                                </TR>
                                                <TR>
                                                    <TD class=menuSmall><A class=style2
                                                                           href="#" target=dmMain>－
                                                        工资条</A>
                                                    </TD>
                                                </TR>
                                            </TBODY>
                                        </TABLE>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD background=${pageContext.request.contextPath }/images/new_027.jpg height=1></TD></TR>
                                <TR>
                                    <TD class=mainMenu onClick="MenuDisplay('table_3');"><SPAN
                                            class=span id=table_3Span>＋</SPAN> 合同管理</TD></TR>
                                <TR>
                                    <TD>
                                        <TABLE id=table_3 style="DISPLAY: none" cellSpacing=0 cellPadding=2
                                               width=155 align=center border=0>
                                            <TBODY>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 合同信息</A></TD></TR>

                                            </TBODY>
                                        </TABLE>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD background=${pageContext.request.contextPath }/images/new_027.jpg height=1></TD></TR>
                                <TR>
                                    <TD class=mainMenu onClick="MenuDisplay('table_4');"><SPAN
                                            class=span id=table_4Span>＋</SPAN> 培训管理</TD></TR>
                                <TR>
                                    <TD>
                                        <TABLE id=table_4 style="DISPLAY: none" cellSpacing=0 cellPadding=2
                                               width=155 align=center border=0>
                                            <TBODY>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="index_train"
                                                                       target=dmMain>－ 培训计划表</A></TD></TR>
                                            </TBODY>
                                        </TABLE>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD background=${pageContext.request.contextPath }/images/new_027.jpg height=1></TD></TR>
                                <TR>
                                    <TD class=mainMenu onClick="MenuDisplay('table_5');"><SPAN
                                            class=span id=table_5Span>＋</SPAN> 人事调动</TD></TR>
                                <TR>
                                    <TD>
                                        <TABLE id=table_5 style="DISPLAY: none" cellSpacing=0 cellPadding=2
                                               width=155 align=center border=0>
                                            <TBODY>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="transfer/1"
                                                                       target=dmMain>－ 员工调动表</A></TD></TR>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="turnover/1"
                                                                       target=dmMain>－ 员工离职表</A></TD></TR>

                                            </TBODY>
                                        </TABLE>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD background=${pageContext.request.contextPath }/images/new_027.jpg height=1></TD></TR>
                                <TR>
                                    <TD class=mainMenu onClick="MenuDisplay('table_6');"><SPAN
                                            class=span id=table_6Span>＋</SPAN> 人事管理</TD></TR>
                                <TR>
                                    <TD>
                                        <TABLE id=table_6 style="DISPLAY: none" cellSpacing=0 cellPadding=2
                                               width=155 align=center border=0>
                                            <TBODY>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="index_emp"
                                                                       target=dmMain>－ 员工信息表</A></TD></TR>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 职称评定表</A></TD></TR>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 社会关系表</A></TD></TR>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 工作经历表</A></TD></TR>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 学习经历表</A></TD></TR>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 人事档案卡</A></TD></TR>

                                            </TBODY>
                                        </TABLE>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD background=${pageContext.request.contextPath }/images/new_027.jpg height=1></TD></TR>
                                <TR>
                                    <TD class=mainMenu onClick="MenuDisplay('table_7');"><SPAN
                                            class=span id=table_7Span>＋</SPAN> 物品管理</TD></TR>
                                <TR>
                                    <TD>
                                        <TABLE id=table_7 style="DISPLAY: none" cellSpacing=0 cellPadding=2
                                               width=155 align=center border=0>
                                            <TBODY>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="good/list/1"
                                                                       target=dmMain>－ 物品资料信息</A></TD></TR>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 物品领用表</A></TD></TR>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 物品归还表</A></TD></TR>

                                            </TBODY>
                                        </TABLE>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD background=${pageContext.request.contextPath }/images/new_027.jpg height=1></TD></TR>
                                <TR>
                                    <TD class=mainMenu onClick="MenuDisplay('table_8');"><SPAN
                                            class=span id=table_8Span>＋</SPAN> 考核管理</TD></TR>
                                <TR>
                                    <TD>
                                        <TABLE id=table_8 style="DISPLAY: none" cellSpacing=0 cellPadding=2
                                               width=155 align=center border=0>
                                            <TBODY>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 考核信息表</A></TD></TR>


                                            </TBODY>
                                        </TABLE>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD background=${pageContext.request.contextPath }/images/new_027.jpg height=1></TD></TR>
                                <TR>
                                    <TD class=mainMenu onClick="MenuDisplay('table_9');"><SPAN
                                            class=span id=table_9Span>＋</SPAN> 证照管理</TD></TR>
                                <TR>
                                    <TD>
                                        <TABLE id=table_9 style="DISPLAY: none" cellSpacing=0 cellPadding=2
                                               width=155 align=center border=0>
                                            <TBODY>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 证照信息表</A>
                                                </TD>
                                            </TR>

                                            </TBODY>
                                        </TABLE>
                                    </TD>



                                    </TD>
                                </TR>
                                <TR>
                                    <TD background=${pageContext.request.contextPath }/images/new_027.jpg height=1></TD></TR>
                                <TR>
                                    <TD class=mainMenu onClick="MenuDisplay('table_10');"><SPAN
                                            class=span id=table_10Span>＋</SPAN> 招聘管理</TD></TR>
                                <TR>
                                    <TD>
                                        <TABLE id=table_10 style="DISPLAY: none" cellSpacing=0 cellPadding=2
                                               width=155 align=center border=0>
                                            <TBODY>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 招聘计划表</A>
                                                </TD>
                                            </TR>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 储备人才信息表</A>
                                                </TD>
                                            </TR>
                                            </TBODY>
                                        </TABLE>
                                    </TD>


                                </TR>
                                <TR>
                                    <TD background=${pageContext.request.contextPath }/images/new_027.jpg height=1></TD></TR>
                                <TR>
                                    <TD class=mainMenu onClick="MenuDisplay('table_11');"><SPAN
                                            class=span id=table_11Span>＋</SPAN> 奖惩管理</TD></TR>
                                <TR>
                                    <TD>
                                        <TABLE id=table_11 style="DISPLAY: none" cellSpacing=0 cellPadding=2
                                               width=155 align=center border=0>
                                            <TBODY>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 奖惩项目表</A>
                                                </TD>
                                            </TR>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 奖惩处分表</A>
                                                </TD>
                                            </TR>
                                            </TBODY>
                                        </TABLE>
                                    </TD>


                                </TR>
                                <TR>
                                    <TD background=${pageContext.request.contextPath }/images/new_027.jpg height=1></TD></TR>
                                <TR>
                                    <TD class=mainMenu onClick="MenuDisplay('table_12');"><SPAN
                                            class=span id=table_12Span>＋</SPAN> 离线填报</TD></TR>
                                <TR>
                                    <TD>
                                        <TABLE id=table_12 style="DISPLAY: none" cellSpacing=0 cellPadding=2
                                               width=155 align=center border=0>
                                            <TBODY>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 下载EXCEL模版</A>
                                                </TD>
                                            </TR>
                                            <TR>
                                                <TD class=menuSmall><A class=style2
                                                                       href="#"
                                                                       target=dmMain>－ 上传EXCEL模版</A>
                                                </TD>
                                            </TR>
                                            </TBODY>
                                        </TABLE>
                                    </TD>


                                </TR>
                            </TBODY>
                        </TABLE>
                    </TD>
                    <TD width=15 background=${pageContext.request.contextPath }/images/new_009.jpg ></TD>
                </TR>
        <TABLE cellSpacing=0 cellPadding=0 width=210 align=center border=0>
            <TBODY>
                <TR>
                    <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_010.jpg" border=0></TD>
                    <TD align=middle width=180 background=${pageContext.request.contextPath }/images/new_011.jpg
                        height=15></TD>
                    <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_012.jpg"
                                      border=0>
                    </TD>
                </TR>
            </TBODY>
        </TABLE>


        </TBODY>
    </TABLE>
</FORM>

</BODY>

</HTML>
