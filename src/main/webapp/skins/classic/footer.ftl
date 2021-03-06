<div class="footer">
    <div class="wrapper">
        <div class="slogan">
        ${indexIntroLabel} &nbsp; &nbsp;
            <a href="https://github.com/YunWisdomZhao/BBS" target="_blank" class="tooltipped tooltipped-n"
               aria-label="${siteCodeLabel}">
                <svg class="icon-github">
                    <use xlink:href="#github"></use>
                </svg>
            </a> &nbsp;
            <a href="http://weibo.com/u/2778228501" target="_blank" class="tooltipped tooltipped-n"
               aria-label="${followWeiboLabel}">
                <svg class="icon-weibo">
                    <use xlink:href="#weibo"></use>
                </svg>
            </a> &nbsp;
            <a target="_blank" rel="noopener" class="tooltipped tooltipped-n" aria-label="${joinTelegramLabel}"
               href="https://t.me/b3log">
                <svg class="icon-telegram">
                    <use xlink:href="#icon-telegram"></use>
                </svg>
            </a>
        </div>
        <div class="fn-flex-1">
            <div class="footer-nav fn-clear">
                <a rel="help" href="${servePath}/article/1546929099122">${aboutLabel}</a>
                <a href="https://hacpai.com/article/1457158841475">API</a>
                <a href="${servePath}/tag/announcement">${symAnnouncementLabel}</a>
                <a href="${servePath}/domains">${domainLabel}</a>
                <a href="${servePath}/tags">${tagLabel}</a>
                <a href="${servePath}/statistic">${dataStatLabel}</a>
                <div class="fn-right">
                    <a rel="copyright" href="http://localhost:8080" target="_blank">Symphony</a>
                ${visionLabel}
                </div>
            </div>
            <div class="fn-clear ft-smaller">
            ${sloganLabel}
                <div class="fn-right">
                    <#if footerBeiAnHao != ''>
                        <a href="http://localhost:8080" target="_blank">${footerBeiAnHao}</a> •
                    </#if>
                    © ${year} <a href="http://localhost:8080" target="_blank">B3log-Symphony</a> •
                    <a href="https://sym.b3log.org" target="_blank">Sym</a>
                ${version} • ${elapsed?c}ms
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${staticServePath}/js/symbol-defs${miniPostfix}.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/js/lib/compress/libs.min.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}"></script>
<script>
    var Label = {
        markedAvailable: ${markedAvailable?c},
        reportSuccLabel: '${reportSuccLabel}',
        breezemoonLabel: '${breezemoonLabel}',
        confirmRemoveLabel: "${confirmRemoveLabel}",
        reloginLabel: "${reloginLabel}",
        invalidPasswordLabel: "${invalidPasswordLabel}",
        loginNameErrorLabel: "${loginNameErrorLabel}",
        followLabel: "${followLabel}",
        unfollowLabel: "${unfollowLabel}",
        symphonyLabel: "${symphonyLabel}",
        visionLabel: "${visionLabel}",
        cmtLabel: "${cmtLabel}",
        collectLabel: "${collectLabel}",
        uncollectLabel: "${uncollectLabel}",
        desktopNotificationTemplateLabel: "${desktopNotificationTemplateLabel}",
        servePath: "${servePath}",
        staticServePath: "${staticServePath}",
        isLoggedIn: ${isLoggedIn?c},
        funNeedLoginLabel: '${funNeedLoginLabel}',
        notificationCommentedLabel: '${notificationCommentedLabel}',
        notificationReplyLabel: '${notificationReplyLabel}',
        notificationAtLabel: '${notificationAtLabel}',
        notificationFollowingLabel: '${notificationFollowingLabel}',
        pointLabel: '${pointLabel}',
        sameCityLabel: '${sameCityLabel}',
        systemLabel: '${systemLabel}',
        newFollowerLabel: '${newFollowerLabel}',
        makeAsReadLabel: '${makeAsReadLabel}',
        <#if isLoggedIn>
            currentUserName: '${currentUser.userName}',
        </#if>
        <#if csrfToken??>
            csrfToken: '${csrfToken}'
        </#if>
    }

    <#if isLoggedIn>
    Label.userKeyboardShortcutsStatus = '${currentUser.userKeyboardShortcutsStatus}'
    </#if>

    Util.init(${isLoggedIn?c})

    <#if isLoggedIn>
    // Init [User] channel
    Util.initUserChannel("${wsScheme}://${serverHost}:${serverPort}${contextPath}/user-channel")
    </#if>

    <#if mouseEffects>
    Util.mouseClickEffects()
    </#if>
</script>
<#if algoliaEnabled>
<script src="${staticServePath}/js/lib/algolia/algolia.min.js"></script>
<script>
    Util.initSearch('${algoliaAppId}', '${algoliaSearchKey}', '${algoliaIndex}')
</script>
</#if>
${footerPCCode}
