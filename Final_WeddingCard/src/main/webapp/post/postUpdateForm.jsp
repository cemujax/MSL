<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
제목
<input type="text" name="title">
<div id="tx_trex_container" class="tx-editor-container">
<div id="tx_sidebar" class="tx-sidebar">
    <div class="tx-sidebar-boundary">
        <ul class="tx-bar tx-bar-left tx-nav-attach">
            <li class="tx-list">
                <div unselectable="on" id="tx_image" class="tx-image tx-btn-trans">
                    <a href="javascript:;" title="ì¬ì§" class="tx-text">ì¬ì§</a>
                </div>
            </li>
            <li class="tx-list">
                <div unselectable="on" id="tx_file" class="tx-file tx-btn-trans">
                    <a href="javascript:;" title="íì¼" class="tx-text">íì¼</a>
                </div>
            </li>
            <li class="tx-list">
                <div unselectable="on" id="tx_media" class="tx-media tx-btn-trans">
                    <a href="javascript:;" title="ì¸ë¶ì»¨íì¸ " class="tx-text">ì¸ë¶ì»¨íì¸ </a>
                </div>
            </li>
        </ul>
        <ul class="tx-bar tx-bar-right">
            <li class="tx-list">
                <div unselectable="on" class="tx-btn-lrbg tx-fullscreen" id="tx_fullscreen">
                    <a href="javascript:;" class="tx-icon" title="ëê²ì°ê¸° (Ctrl+M)">ëê²ì°ê¸°</a>
                </div>
            </li>
        </ul>
        <ul class="tx-bar tx-bar-right tx-nav-opt">
            <li class="tx-list">
                <div unselectable="on" class="tx-switchtoggle" id="tx_switchertoggle">
                    <a href="javascript:;" title="ìëí° íì">ìëí°</a>
                </div>
            </li>
        </ul>
    </div>
</div>

<div id="tx_toolbar_basic" class="tx-toolbar tx-toolbar-basic">
<div class="tx-toolbar-boundary">
<ul class="tx-bar tx-bar-left">
    <li class="tx-list">
        <div id="tx_fontfamily" unselectable="on" class="tx-slt-70bg tx-fontfamily">
            <a href="javascript:;" title="ê¸ê¼´">êµ´ë¦¼</a>
        </div>
        <div id="tx_fontfamily_menu" class="tx-fontfamily-menu tx-menu" unselectable="on"></div>
    </li>
</ul>
<ul class="tx-bar tx-bar-left">
    <li class="tx-list">
        <div unselectable="on" class="tx-slt-42bg tx-fontsize" id="tx_fontsize">
            <a href="javascript:;" title="ê¸ìí¬ê¸°">9pt</a>
        </div>
        <div id="tx_fontsize_menu" class="tx-fontsize-menu tx-menu" unselectable="on"></div>
    </li>
</ul>
<ul class="tx-bar tx-bar-left tx-group-font">

    <li class="tx-list">
        <div unselectable="on" class="tx-btn-lbg tx-bold" id="tx_bold">
            <a href="javascript:;" class="tx-icon" title="êµµê² (Ctrl+B)">êµµê²</a>
        </div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-bg tx-underline" id="tx_underline">
            <a href="javascript:;" class="tx-icon" title="ë°ì¤ (Ctrl+U)">ë°ì¤</a>
        </div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-bg tx-italic" id="tx_italic">
            <a href="javascript:;" class="tx-icon" title="ê¸°ì¸ì (Ctrl+I)">ê¸°ì¸ì</a>
        </div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-bg tx-strike" id="tx_strike">
            <a href="javascript:;" class="tx-icon" title="ì·¨ìì  (Ctrl+D)">ì·¨ìì </a>
        </div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-slt-tbg tx-forecolor" id="tx_forecolor">
            <a href="javascript:;" class="tx-icon" title="ê¸ìì">ê¸ìì</a>
            <a href="javascript:;" class="tx-arrow" title="ê¸ìì ì í">ê¸ìì ì í</a>
        </div>
        <div id="tx_forecolor_menu" class="tx-menu tx-forecolor-menu tx-colorpallete" unselectable="on"></div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-slt-brbg tx-backcolor" id="tx_backcolor">
            <a href="javascript:;" class="tx-icon" title="ê¸ì ë°°ê²½ì">ê¸ì ë°°ê²½ì</a>
            <a href="javascript:;" class="tx-arrow" title="ê¸ì ë°°ê²½ì ì í">ê¸ì ë°°ê²½ì ì í</a>
        </div>
        <div id="tx_backcolor_menu" class="tx-menu tx-backcolor-menu tx-colorpallete" unselectable="on"></div>
    </li>
</ul>
<ul class="tx-bar tx-bar-left tx-group-align">
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-lbg tx-alignleft" id="tx_alignleft">
            <a href="javascript:;" class="tx-icon" title="ì¼ìª½ì ë ¬ (Ctrl+,)">ì¼ìª½ì ë ¬</a>
        </div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-bg tx-aligncenter" id="tx_aligncenter">
            <a href="javascript:;" class="tx-icon" title="ê°ì´ë°ì ë ¬ (Ctrl+.)">ê°ì´ë°ì ë ¬</a>
        </div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-bg tx-alignright" id="tx_alignright">
            <a href="javascript:;" class="tx-icon" title="ì¤ë¥¸ìª½ì ë ¬ (Ctrl+/)">ì¤ë¥¸ìª½ì ë ¬</a>
        </div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-rbg tx-alignfull" id="tx_alignfull">
            <a href="javascript:;" class="tx-icon" title="ììª½ì ë ¬">ììª½ì ë ¬</a>
        </div>
    </li>
</ul>
<ul class="tx-bar tx-bar-left tx-group-tab">
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-lbg tx-indent" id="tx_indent">
            <a href="javascript:;" title="ë¤ì¬ì°ê¸° (Tab)" class="tx-icon">ë¤ì¬ì°ê¸°</a>
        </div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-rbg tx-outdent" id="tx_outdent">
            <a href="javascript:;" title="ë´ì´ì°ê¸° (Shift+Tab)" class="tx-icon">ë´ì´ì°ê¸°</a>
        </div>
    </li>
</ul>
<ul class="tx-bar tx-bar-left tx-group-list">
    <li class="tx-list">
        <div unselectable="on" class="tx-slt-31lbg tx-lineheight" id="tx_lineheight">
            <a href="javascript:;" class="tx-icon" title="ì¤ê°ê²©">ì¤ê°ê²©</a>
            <a href="javascript:;" class="tx-arrow" title="ì¤ê°ê²©">ì¤ê°ê²© ì í</a>
        </div>
        <div id="tx_lineheight_menu" class="tx-lineheight-menu tx-menu" unselectable="on"></div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-slt-31rbg tx-styledlist" id="tx_styledlist">
            <a href="javascript:;" class="tx-icon" title="ë¦¬ì¤í¸">ë¦¬ì¤í¸</a>
            <a href="javascript:;" class="tx-arrow" title="ë¦¬ì¤í¸">ë¦¬ì¤í¸ ì í</a>
        </div>
        <div id="tx_styledlist_menu" class="tx-styledlist-menu tx-menu" unselectable="on"></div>
    </li>
</ul>
<ul class="tx-bar tx-bar-left tx-group-etc">
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-lbg tx-emoticon" id="tx_emoticon">
            <a href="javascript:;" class="tx-icon" title="ì´ëª¨í°ì½">ì´ëª¨í°ì½</a>
        </div>
        <div id="tx_emoticon_menu" class="tx-emoticon-menu tx-menu" unselectable="on"></div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-bg tx-link" id="tx_link">
            <a href="javascript:;" class="tx-icon" title="ë§í¬ (Ctrl+K)">ë§í¬</a>
        </div>
        <div id="tx_link_menu" class="tx-link-menu tx-menu"></div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-bg tx-specialchar" id="tx_specialchar">
            <a href="javascript:;" class="tx-icon" title="í¹ìë¬¸ì">í¹ìë¬¸ì</a>
        </div>
        <div id="tx_specialchar_menu" class="tx-specialchar-menu tx-menu"></div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-bg tx-table" id="tx_table">
            <a href="javascript:;" class="tx-icon" title="íë§ë¤ê¸°">íë§ë¤ê¸°</a>
        </div>
        <div id="tx_table_menu" class="tx-table-menu tx-menu" unselectable="on">
            <div class="tx-menu-inner">
                <div class="tx-menu-preview"></div>
                <div class="tx-menu-rowcol"></div>
                <div class="tx-menu-deco"></div>
                <div class="tx-menu-enter"></div>
            </div>
        </div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-rbg tx-horizontalrule" id="tx_horizontalrule">
            <a href="javascript:;" class="tx-icon" title="êµ¬ë¶ì ">êµ¬ë¶ì </a>
        </div>
        <div id="tx_horizontalrule_menu" class="tx-horizontalrule-menu tx-menu" unselectable="on"></div>
    </li>
</ul>
<ul class="tx-bar tx-bar-left">
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-lbg tx-richtextbox" id="tx_richtextbox">
            <a href="javascript:;" class="tx-icon" title="ê¸ìì">ê¸ìì</a>
        </div>
        <div id="tx_richtextbox_menu" class="tx-richtextbox-menu tx-menu">
            <div class="tx-menu-header">
                <div class="tx-menu-preview-area">
                    <div class="tx-menu-preview"></div>
                </div>
                <div class="tx-menu-switch">
                    <div class="tx-menu-simple tx-selected"><a><span>ê°ë¨ ì í</span></a></div>
                    <div class="tx-menu-advanced"><a><span>ì§ì  ì í</span></a></div>
                </div>
            </div>
            <div class="tx-menu-inner">
            </div>
            <div class="tx-menu-footer">
                <img class="tx-menu-confirm" src="images/icon/editor/btn_confirm.gif?rv=1.0.1" alt=""/>
                <img class="tx-menu-cancel" hspace="3" src="images/icon/editor/btn_cancel.gif?rv=1.0.1" alt=""/>
            </div>
        </div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-bg tx-quote" id="tx_quote">
            <a href="javascript:;" class="tx-icon" title="ì¸ì©êµ¬ (Ctrl+Q)">ì¸ì©êµ¬</a>
        </div>
        <div id="tx_quote_menu" class="tx-quote-menu tx-menu" unselectable="on"></div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-bg tx-background" id="tx_background">
            <a href="javascript:;" class="tx-icon" title="ë°°ê²½ì">ë°°ê²½ì</a>
        </div>
        <div id="tx_background_menu" class="tx-menu tx-background-menu tx-colorpallete"
             unselectable="on"></div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-rbg tx-dictionary" id="tx_dictionary">
            <a href="javascript:;" class="tx-icon" title="ì¬ì ">ì¬ì </a>
        </div>
    </li>
</ul>
<ul class="tx-bar tx-bar-left tx-group-undo">
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-lbg tx-undo" id="tx_undo">
            <a href="javascript:;" class="tx-icon" title="ì¤íì·¨ì (Ctrl+Z)">ì¤íì·¨ì</a>
        </div>
    </li>
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-rbg tx-redo" id="tx_redo">
            <a href="javascript:;" class="tx-icon" title="ë¤ìì¤í (Ctrl+Y)">ë¤ìì¤í</a>
        </div>
    </li>
</ul>
<ul class="tx-bar tx-bar-right">
    <li class="tx-list">
        <div unselectable="on" class="tx-btn-nlrbg tx-advanced" id="tx_advanced">
            <a href="javascript:;" class="tx-icon" title="í´ë° ëë³´ê¸°">í´ë° ëë³´ê¸°</a>
        </div>
    </li>
</ul>
</div>
</div>
<div id="tx_toolbar_advanced" class="tx-toolbar tx-toolbar-advanced">
    <div class="tx-toolbar-boundary">
        <ul class="tx-bar tx-bar-left">
            <li class="tx-list">
                <div class="tx-tableedit-title"></div>
            </li>
        </ul>

        <ul class="tx-bar tx-bar-left tx-group-align">
            <li class="tx-list">
                <div unselectable="on" class="tx-btn-lbg tx-mergecells" id="tx_mergecells">
                    <a href="javascript:;" class="tx-icon2" title="ë³í©">ë³í©</a>
                </div>
                <div id="tx_mergecells_menu" class="tx-mergecells-menu tx-menu" unselectable="on"></div>
            </li>
            <li class="tx-list">
                <div unselectable="on" class="tx-btn-bg tx-insertcells" id="tx_insertcells">
                    <a href="javascript:;" class="tx-icon2" title="ì½ì">ì½ì</a>
                </div>
                <div id="tx_insertcells_menu" class="tx-insertcells-menu tx-menu" unselectable="on"></div>
            </li>
            <li class="tx-list">
                <div unselectable="on" class="tx-btn-rbg tx-deletecells" id="tx_deletecells">
                    <a href="javascript:;" class="tx-icon2" title="ì­ì ">ì­ì </a>
                </div>
                <div id="tx_deletecells_menu" class="tx-deletecells-menu tx-menu" unselectable="on"></div>
            </li>
        </ul>

        <ul class="tx-bar tx-bar-left tx-group-align">
            <li class="tx-list">
                <div id="tx_cellslinepreview" unselectable="on" class="tx-slt-70lbg tx-cellslinepreview">
                    <a href="javascript:;" title="ì  ë¯¸ë¦¬ë³´ê¸°"></a>
                </div>
                <div id="tx_cellslinepreview_menu" class="tx-cellslinepreview-menu tx-menu" unselectable="on"></div>
            </li>
            <li class="tx-list">
                <div id="tx_cellslinecolor" unselectable="on" class="tx-slt-tbg tx-cellslinecolor">
                    <a href="javascript:;" class="tx-icon2" title="ì ì">ì ì</a>

                    <div class="tx-colorpallete" unselectable="on"></div>
                </div>
                <div id="tx_cellslinecolor_menu" class="tx-cellslinecolor-menu tx-menu tx-colorpallete"
                     unselectable="on"></div>
            </li>
            <li class="tx-list">
                <div id="tx_cellslineheight" unselectable="on" class="tx-btn-bg tx-cellslineheight">
                    <a href="javascript:;" class="tx-icon2" title="ëê»">ëê»</a>
                </div>
                <div id="tx_cellslineheight_menu" class="tx-cellslineheight-menu tx-menu"
                     unselectable="on"></div>
            </li>
            <li class="tx-list">
                <div id="tx_cellslinestyle" unselectable="on" class="tx-btn-bg tx-cellslinestyle">
                    <a href="javascript:;" class="tx-icon2" title="ì¤íì¼">ì¤íì¼</a>
                </div>
                <div id="tx_cellslinestyle_menu" class="tx-cellslinestyle-menu tx-menu" unselectable="on"></div>
            </li>
            <li class="tx-list">
                <div id="tx_cellsoutline" unselectable="on" class="tx-btn-rbg tx-cellsoutline">
                    <a href="javascript:;" class="tx-icon2" title="íëë¦¬">íëë¦¬</a>
                </div>
                <div id="tx_cellsoutline_menu" class="tx-cellsoutline-menu tx-menu" unselectable="on"></div>
            </li>
        </ul>
        <ul class="tx-bar tx-bar-left">
            <li class="tx-list">
                <div id="tx_tablebackcolor" unselectable="on" class="tx-btn-lrbg tx-tablebackcolor"
                     style="background-color:#9aa5ea;">
                    <a href="javascript:;" class="tx-icon2" title="íì´ë¸ ë°°ê²½ì">íì´ë¸ ë°°ê²½ì</a>
                </div>
                <div id="tx_tablebackcolor_menu" class="tx-tablebackcolor-menu tx-menu tx-colorpallete"
                     unselectable="on"></div>
            </li>
        </ul>
        <ul class="tx-bar tx-bar-left">
            <li class="tx-list">
                <div id="tx_tabletemplate" unselectable="on" class="tx-btn-lrbg tx-tabletemplate">
                    <a href="javascript:;" class="tx-icon2" title="íì´ë¸ ìì">íì´ë¸ ìì</a>
                </div>
                <div id="tx_tabletemplate_menu" class="tx-tabletemplate-menu tx-menu tx-colorpallete"
                     unselectable="on"></div>
            </li>
        </ul>

    </div>
</div>
<div id="tx_canvas" class="tx-canvas">
    <div id="tx_loading" class="tx-loading">
        <div><img src="post/images/icon/editor/loading2.png" width="113" height="21" align="absmiddle"/></div>
    </div>
    <div id="tx_canvas_wysiwyg_holder" class="tx-holder" style="display:block;">
        <iframe id="tx_canvas_wysiwyg" name="tx_canvas_wysiwyg" allowtransparency="true" frameborder="0"></iframe>
    </div>
    <div class="tx-source-deco">
        <div id="tx_canvas_source_holder" class="tx-holder">
            <textarea id="tx_canvas_source" rows="30" cols="30"></textarea>
        </div>
    </div>
    <div id="tx_canvas_text_holder" class="tx-holder">
        <textarea id="tx_canvas_text" rows="30" cols="30"></textarea>
    </div>
</div>
<div id="tx_resizer" class="tx-resize-bar">
    <div class="tx-resize-bar-bg"></div>
    <img id="tx_resize_holder" src="post/images/icon/editor/skin/01/btn_drag01.gif" width="58" height="12" unselectable="on"
         alt=""/>
</div>
<div class="tx-side-bi" id="tx_side_bi">
    <div style="text-align: right;">
        <img hspace="4" height="14" width="78" align="absmiddle" src="post/images/icon/editor/editor_bi.png"/>
    </div>
</div>
<div id="tx_attach_div" class="tx-attach-div">
    <div id="tx_attach_txt" class="tx-attach-txt">íì¼ ì²¨ë¶</div>
    <div id="tx_attach_box" class="tx-attach-box">
        <div class="tx-attach-box-inner">
            <div id="tx_attach_preview" class="tx-attach-preview">
                <p></p>
                <img src="post/images/icon/editor/pn_preview.gif" width="147" height="108" unselectable="on"/>
            </div>
            <div class="tx-attach-main">
                <div id="tx_upload_progress" class="tx-upload-progress">
                    <div>0%</div>
                    <p>íì¼ì ìë¡ëíë ì¤ìëë¤.</p>
                </div>
                <ul class="tx-attach-top">
                    <li id="tx_attach_delete" class="tx-attach-delete"><a>ì ì²´ì­ì </a></li>
                    <li id="tx_attach_size" class="tx-attach-size">
                        íì¼: <span id="tx_attach_up_size" class="tx-attach-size-up"></span>/
                        <span id="tx_attach_max_size"></span>
                    </li>
                    <li id="tx_attach_tools" class="tx-attach-tools">
                    </li>
                </ul>
                <ul id="tx_attach_list" class="tx-attach-list"></ul>
            </div>
        </div>
    </div>
</div>
</div>