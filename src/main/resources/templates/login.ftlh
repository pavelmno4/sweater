<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
${message?ifExists}
<b>Login page</b>
<@l.login "/login" false />

</@c.page>